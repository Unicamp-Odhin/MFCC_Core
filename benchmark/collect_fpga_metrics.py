#!/usr/bin/env python3
# Coleta metricas de sintese FPGA do sweep em benchmark/fpga/<combo>/<fpga>/.
# Emite CSV (benchmark/fpga/summary.csv) e tabela legivel no stdout.
# Metricas por alvo:
#   vivado : LUTs, FFs, DSPs, BRAM, WNS -> Fmax, power (rpts pos-route)
#   ecp5   : LUTs (TRELLIS_COMB), FFs, BRAM (DP16KD), Fmax (log do nextpnr)
#   gowin  : logic cells / registers / Fmax (melhor esforço, relatorios impl/)
#   quartus: logic elements, memory bits, DSP 9-bit, Fmax (sta), power
import csv
import glob
import os
import re
import sys

BENCH = os.path.dirname(os.path.abspath(__file__))
OUTROOT = os.path.join(BENCH, "fpga")

FMAX_TARGET_NS = 10.0  # xilinx.xdc: create_clock -period 10.000


def num(s):
    try:
        return float(s.replace(",", ""))
    except Exception:
        return None


def parse_vivado(outdir):
    m = {"LUTs": None, "FFs": None, "DSPs": None, "BRAM": None,
         "Fmax_MHz": None, "Power_W": None, "WNS_ns": None}
    ufiles = sorted(glob.glob(os.path.join(outdir, "*utilization_post_route.rpt")))
    if ufiles:
        txt = open(ufiles[0], errors="ignore").read()
        for pat, key in [(r"\|\s*Slice LUTs\*?\s*\|\s*([0-9]+)", "LUTs"),
                         (r"\|\s*Slice Registers\s*\|\s*([0-9]+)", "FFs"),
                         (r"\|\s*DSPs\s*\|\s*([0-9]+)", "DSPs"),
                         (r"\|\s*Block RAM Tile\s*\|\s*([0-9.]+)", "BRAM")]:
            x = re.search(pat, txt)
            if x:
                m[key] = num(x.group(1))
    tfiles = sorted(glob.glob(os.path.join(outdir, "*timing_post_route.rpt")))
    if tfiles:
        txt = open(tfiles[0], errors="ignore").read()
        i = txt.find("Design Timing Summary")
        if i >= 0:
            x = re.search(r"WNS\(ns\)[^\n]*\n[^\n]*\n\s*(-?[0-9.]+)", txt[i:])
            if x:
                m["WNS_ns"] = num(x.group(1))
    pfiles = sorted(glob.glob(os.path.join(outdir, "*power_post_route.rpt")))
    if pfiles:
        x = re.search(r"\|\s*Total On-Chip Power \(W\)\s*\|\s*([0-9.]+)", open(pfiles[0], errors="ignore").read())
        if x:
            m["Power_W"] = num(x.group(1))
    if m["WNS_ns"] is not None:
        eff = FMAX_TARGET_NS - m["WNS_ns"]
        if eff > 0:
            m["Fmax_MHz"] = round(1000.0 / eff, 2)
    return m


def parse_ecp5(outdir):
    m = {"LUTs": None, "FFs": None, "DSPs": None, "BRAM": None,
         "Fmax_MHz": None, "Power_W": None}
    lg = os.path.join(outdir, "nextpnr.log")
    if os.path.isfile(lg):
        txt = open(lg, errors="ignore").read()
        x = re.search(r"Max frequency for clock '[^']*':\s*([0-9.]+)\s*MHz", txt)
        if x:
            m["Fmax_MHz"] = num(x.group(1))
        for pat, key in [(r"TRELLIS_COMB:\s*([0-9]+)", "LUTs"),
                         (r"TRELLIS_FF:\s*([0-9]+)", "FFs"),
                         (r"DP16KD:\s*([0-9]+)", "BRAM"),
                         (r"MULT18X18D:\s*([0-9]+)", "DSPs")]:
            x = re.search(pat, txt)
            if x:
                m[key] = num(x.group(1))
    return m


def parse_gowin(outdir):
    m = {"LUTs": None, "FFs": None, "DSPs": None, "BRAM": None,
         "Fmax_MHz": None, "Power_W": None}
    # relatorios do flow Gowin ficam em impl/ (pnr: .prr, timing: .ptrs/.pmr)
    pats_lut = re.compile(r"(?:Total\s+)?(?:Logic\s+Cells|LUTs?)\D{0,20}([0-9,]+)", re.I)
    for fn in glob.glob(os.path.join(outdir, "impl", "**", "*"), recursive=True):
        if not os.path.isfile(fn):
            continue
        low = fn.lower()
        try:
            txt = open(fn, errors="ignore").read()
        except Exception:
            continue
        if low.endswith((".prr", ".pmr", ".rpt", ".txt")):
            x = re.search(r"Frequency[^\d]{0,40}([0-9.]+)\s*MHz", txt, re.I)
            if x and m["Fmax_MHz"] is None:
                m["Fmax_MHz"] = num(x.group(1))
            x = re.search(r"Total Logic Cells\D{0,20}([0-9,]+)", txt, re.I)
            if x and m["LUTs"] is None:
                m["LUTs"] = num(x.group(1))
            x = re.search(r"Registers?\s*:\s*\D*([0-9,]+)", txt, re.I)
            if x and m["FFs"] is None:
                m["FFs"] = num(x.group(1))
    return m


def parse_quartus(outdir):
    m = {"LUTs": None, "FFs": None, "DSPs": None, "BRAM": None,
         "Fmax_MHz": None, "Power_W": None}
    fr = os.path.join(outdir, "mfcc_cyclone.fit.rpt")
    if os.path.isfile(fr):
        txt = open(fr, errors="ignore").read()
        x = re.search(r"Total logic elements\D{0,30}([0-9,]+)", txt)
        if x:
            m["LUTs"] = num(x.group(1))
        x = re.search(r"Total registers\D{0,30}([0-9,]+)", txt)
        if x:
            m["FFs"] = num(x.group(1))
        x = re.search(r"Embedded Multiplier 9-bit elements\D{0,30}([0-9,]+)", txt)
        if x:
            m["DSPs"] = num(x.group(1))
        x = re.search(r"Total block memory bits\D{0,30}([0-9,]+)", txt)
        if x:
            m["BRAM"] = num(x.group(1))
    sr = os.path.join(outdir, "mfcc_cyclone.sta.rpt")
    if os.path.isfile(sr):
        txt = open(sr, errors="ignore").read()
        i = txt.find("Fmax Summary")
        if i >= 0:
            x = re.search(r";\s*[^;]+;\s*([0-9.]+)\s*;", txt[i:i + 600])
            if x:
                m["Fmax_MHz"] = num(x.group(1))
    pr = os.path.join(outdir, "mfcc_cyclone.power.rpt")
    if os.path.isfile(pr):
        x = re.search(r"Total thermal power\D{0,60}([0-9.]+)\s*mW", open(pr, errors="ignore").read())
        if x:
            m["Power_W"] = round(num(x.group(1)) / 1000.0, 4)
    return m


PARSERS = {
    "kintex": parse_vivado, "artymini": parse_vivado, "arty": parse_vivado,
    "zynq": parse_vivado, "virtex": parse_vivado,
    "ecp5_45k": parse_ecp5, "ecp5_85k": parse_ecp5,
    "gowin": parse_gowin, "cyclone10gx": parse_quartus,
}

PART = {"kintex": "xc7k325tffg676-2", "artymini": "xc7a35tcpg236-1",
        "arty": "xc7a100tcsg324-1", "zynq": "xc7z020clg484-1",
        "virtex": "xc7vx690tffg1761-2", "ecp5_45k": "LFE5U-45F speed6",
        "ecp5_85k": "LFE5U-85F speed8", "gowin": "GW2AR-18C (Tang Nano 9K)",
        "cyclone10gx": "10CX220YF780E5G"}


def main():
    rows = []
    for combo in sorted(os.listdir(OUTROOT)):
        cdir = os.path.join(OUTROOT, combo)
        if not os.path.isdir(cdir) or not combo.startswith("NFFT"):
            continue
        for fpga, parser in PARSERS.items():
            outdir = os.path.join(cdir, fpga)
            if not os.path.isdir(outdir):
                continue
            status = "—"
            df = os.path.join(outdir, ".done")
            if os.path.isfile(df):
                status = open(df).read().strip() or "?"
            m = parser(outdir)
            rows.append({"combo": combo, "fpga": fpga, "part": PART[fpga],
                         "status": status, **m})
    if not rows:
        print("Nenhum resultado em", OUTROOT)
        return
    cols = ["combo", "fpga", "part", "status", "LUTs", "FFs", "DSPs", "BRAM",
            "WNS_ns", "Fmax_MHz", "Power_W"]
    with open(os.path.join(OUTROOT, "summary.csv"), "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=cols)
        w.writeheader()
        w.writerows(rows)
    hdr = "%-16s %-10s %-21s %-8s %8s %8s %5s %6s %7s %9s %8s"
    print(hdr % ("combo", "fpga", "part", "status", "LUTs", "FFs", "DSPs",
                 "BRAM", "WNS", "Fmax(MHz)", "Power(W)"))

    def fmt(v):
        return "-" if v is None else f"{v:g}"

    for r in rows:
        print(hdr % (r["combo"], r["fpga"], r["part"], r["status"],
                     fmt(r.get("LUTs")), fmt(r.get("FFs")), fmt(r.get("DSPs")),
                     fmt(r.get("BRAM")), fmt(r.get("WNS_ns")),
                     fmt(r.get("Fmax_MHz")), fmt(r.get("Power_W"))))


if __name__ == "__main__":
    sys.exit(main())

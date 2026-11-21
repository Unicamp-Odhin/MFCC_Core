#!/usr/bin/env bash
# =============================================================================
# Sweep de sintese FPGA: 9 netlists (3 NFFT x F=8/16/24) x alvos em benchmark/.
#
# Saida: benchmark/fpga/<NFFTxx_Fxx>/<fpga>/  (logs + relatorios + .done)
# Resumo: benchmark/fpga/summary.csv (+ tabela no stdout)
#
# Uso:
#   ./fpga_sweep.sh                # sweep completo (resumivel: pula .done)
#   ./fpga_sweep.sh pilot          # 1 combinacao (512_F16) em 3 alvos rapidos
#   ./fpga_sweep.sh one 256 8      # 1 combinacao em todos os alvos
#   ./fpga_sweep.sh clean          # remove benchmark/fpga
#
# Lanes paralelas: xilinx (2 lanes), lattice, gowin, intel.
# Requer: vivado, yosys+nextpnr-ecp5, gw_sh, quartus_sh (ausentes sao pulados).
# =============================================================================
set -u
BENCH_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$BENCH_DIR/.." && pwd)"
OUTROOT="$BENCH_DIR/fpga"
LOGALL="$OUTROOT/sweep.log"
mkdir -p "$OUTROOT"

# combinacao -> NC (ceps) para o wrapper; netlist benchmark/mfcc_<combo>.v
NC_OF() {
  case "$1" in
    NFFT256_*) echo 7 ;;
    NFFT512_*) echo 12 ;;
    NFFT1024_*) echo 20 ;;
    *) echo "?" ;;
  esac
}

COMBOS=(NFFT256_F8 NFFT256_F16 NFFT256_F24 NFFT512_F8 NFFT512_F16 NFFT512_F24 NFFT1024_F8 NFFT1024_F16 NFFT1024_F24)

have() { command -v "$1" >/dev/null 2>&1; }

mark() { # <outdir> <status>
  echo "$2" > "$1/.done"
  echo "[$(date +%H:%M:%S)] $2: $1" | tee -a "$LOGALL"
}

run_xilinx_target() { # <alvo> <combo>
  local alvo=$1 combo=$2
  local netlist="$BENCH_DIR/mfcc_${combo}.v"
  local outdir="$OUTROOT/$combo/$alvo"
  [ "$(cat "$outdir/.done" 2>/dev/null)" = OK ] && { echo "skip $alvo/$combo (done)"; return 0; }
  mkdir -p "$outdir"
  if ! have vivado; then mark "$outdir" "PULADO (vivado ausente)"; return 0; fi
  if ( cd "$BENCH_DIR" && vivado -mode batch -nojournal -log "$outdir/vivado.log" \
        -source "$BENCH_DIR/${alvo}.tcl" -tclargs "$netlist" "$outdir" \
        > "$outdir/run_stdout.log" 2>&1 ); then
    mark "$outdir" OK
  else
    mark "$outdir" FALHOU
  fi
}

xilinx_lane() { # $@ = alvos
  for alvo in "$@"; do
    for combo in "${COMBOS[@]}"; do run_xilinx_target "$alvo" "$combo"; done
  done
}

lattice_lane() {
  local script
  for combo in "${COMBOS[@]}"; do
    local netlist="$BENCH_DIR/mfcc_${combo}.v"
    for spec in "45k:run_ecp5.sh:ecp5_45k" "85k:run_ecp5_85.sh:ecp5_85k"; do
      local dev=${spec%%:*}; local rest=${spec#*:}
      local script=${rest%%:*}; local fpga=${rest##*:}
      local outdir="$OUTROOT/$combo/$fpga"
      [ "$(cat "$outdir/.done" 2>/dev/null)" = OK ] && { echo "skip $fpga/$combo (done)"; continue; }
      mkdir -p "$outdir"
      if ! have yosys || ! have nextpnr-ecp5; then mark "$outdir" "PULADO (yosys/nextpnr ausente)"; continue; fi
      if ( cd "$BENCH_DIR" && zsh "$BENCH_DIR/$script" "$netlist" "$outdir" ) > "$outdir/run.log" 2>&1; then
        mark "$outdir" OK
      else
        mark "$outdir" FALHOU
      fi
    done
  done
}

gowin_lane() {
  for combo in "${COMBOS[@]}"; do
    local netlist="$BENCH_DIR/mfcc_${combo}.v"
    local outdir="$OUTROOT/$combo/gowin"
    [ "$(cat "$outdir/.done" 2>/dev/null)" = OK ] && { echo "skip gowin/$combo (done)"; continue; }
    mkdir -p "$outdir"
    if ! have gw_sh; then mark "$outdir" "PULADO (gw_sh ausente)"; continue; fi
    sed "s|^add_file .*|add_file $netlist|" "$BENCH_DIR/gowin.tcl" \
      > "$outdir/gowin_sweep.tcl"
    if ( cd "$outdir" && QT_QPA_PLATFORM=minimal gw_sh gowin_sweep.tcl ) > "$outdir/gowin.log" 2>&1; then
      mark "$outdir" OK
    else
      mark "$outdir" FALHOU
    fi
  done
}

intel_lane() {
  local QSH; QSH=$(command -v quartus_sh || true)
  for combo in "${COMBOS[@]}"; do
    local netlist="$BENCH_DIR/mfcc_${combo}.v"
    local outdir="$OUTROOT/$combo/cyclone10gx"
    [ "$(cat "$outdir/.done" 2>/dev/null)" = OK ] && { echo "skip cyclone10gx/$combo (done)"; continue; }
    mkdir -p "$outdir"
    if [ -z "$QSH" ]; then mark "$outdir" "PULADO (quartus ausente)"; continue; fi
    {
      echo "project_new mfcc_cyclone -overwrite"
      echo "set_global_assignment -name FAMILY \"Cyclone 10 GX\""
      echo "set_global_assignment -name DEVICE 10CX220YF780E5G"
      echo "set_global_assignment -name TOP_LEVEL_ENTITY MFCC_Wrapper"
      echo "set_global_assignment -name VERILOG_FILE $netlist"
      echo "set_global_assignment -name VERILOG_FILE $WRAPDIR/wrap_${combo}.v"
      echo "set_global_assignment -name SDC_FILE $OUTROOT/clk_10ns.sdc"
      echo "set_global_assignment -name PROJECT_OUTPUT_DIRECTORY ."
      echo "project_close"
    } > "$outdir/gen_proj.tcl"
    (
      cd "$outdir"
      "$QSH" -t gen_proj.tcl > quartus_gen.log 2>&1
      quartus_map mfcc_cyclone    > quartus_map.log  2>&1
      quartus_fit mfcc_cyclone    > quartus_fit.log  2>&1
      quartus_sta mfcc_cyclone    > quartus_sta.log  2>&1
      quartus_pow mfcc_cyclone    > quartus_pow.log  2>&1
    )
    if [ -f "$outdir/mfcc_cyclone.fit.rpt" ] && [ -f "$outdir/mfcc_cyclone.sta.rpt" ]; then
      mark "$outdir" OK
    else
      mark "$outdir" FALHOU
    fi
  done
}

printf 'create_clock -name sys_clk -period 10.000 [get_ports clk]\n' > "$OUTROOT/clk_10ns.sdc"

case "${1:-all}" in
  clean) rm -rf "$OUTROOT" "$WRAPDIR"; echo "fpga/ e wrap/ removidos"; exit 0 ;;
  pilot)
    COMBOS=(NFFT512_F16)
    run_xilinx_target artymini NFFT512_F16 &
    P1=$!
    lattice_lane & P2=$!
    gowin_lane & P3=$!
    wait $P1 $P2 $P3
    ;;
  one)
    COMBOS=(NFFT$2_F$3)
    xilinx_lane kintex artymini arty zynq virtex &
    L1=$!; lattice_lane & L2=$!; gowin_lane & L3=$!; intel_lane & L4=$!
    wait $L1 $L2 $L3 $L4
    ;;
  all|*)
    xilinx_lane kintex artymini arty zynq virtex &
    L1=$!
    ( lattice_lane; gowin_lane; intel_lane ) &
    L2=$!
    wait $L1 $L2
    ;;
esac

if have python3; then
  python3 "$BENCH_DIR/collect_fpga_metrics.py" | tee "$OUTROOT/summary.txt"
fi
echo "SWEEP FPGA COMPLETO" | tee -a "$LOGALL"

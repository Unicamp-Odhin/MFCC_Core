#!/usr/bin/env zsh
# Sintese+PnR Lattice ECP5 (45k, speed 6) para UM netlist.
# Uso: ./run_ecp5.sh <netlist.v> <outdir>
# Logs e relatorios (yosys, nextpnr) vao para <outdir>.
set -e
NETLIST=${1:-mfcc.v}
OUTDIR=${2:-fpga/ecp5_45k}
mkdir -p "$OUTDIR"
cd "$OUTDIR"
if [ -n "$3" ]; then
  yosys -p "read_verilog $3; read_verilog $NETLIST; synth_ecp5 -json ecp5_net_list.json -abc9 -top MFCC_Wrapper" > yosys.log 2>&1
else
  yosys -p "synth_ecp5 -json ecp5_net_list.json -abc9 -top MFCC_Core" "$NETLIST" > yosys.log 2>&1
fi
nextpnr-ecp5 --json ecp5_net_list.json --45k \
    --textcfg ecp5_net_list.config --package CABGA381 \
    --speed 6 --lpf-allow-unconstrained > nextpnr.log 2>&1
echo "ECP5 45k OK: $OUTDIR"

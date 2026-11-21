#!/usr/bin/env zsh
# Sintese+PnR Lattice ECP5 (85k, speed 8) para UM netlist.
# Uso: ./run_ecp5_85.sh <netlist.v> <outdir>
set -e
NETLIST=${1:-mfcc.v}
OUTDIR=${2:-fpga/ecp5_85k}
mkdir -p "$OUTDIR"
cd "$OUTDIR"
yosys -p "synth_ecp5 -json ecp5_net_list.json -abc9 -top MFCC_Core" "$NETLIST" > yosys.log 2>&1
nextpnr-ecp5 --json ecp5_net_list.json --85k \
    --textcfg ecp5_net_list.config --package CABGA381 \
    --speed 8 --lpf-allow-unconstrained > nextpnr.log 2>&1
echo "ECP5 85k OK: $OUTDIR"

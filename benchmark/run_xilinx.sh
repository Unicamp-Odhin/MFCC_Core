#!/usr/bin/env bash
# Vivado para UM netlist em UM alvo Xilinx.
# Uso: ./run_xilinx.sh <kintex|artymini|arty|zynq|virtex> <netlist.v> <outdir>
set -e
ALVO=${1:?uso: run_xilinx.sh <alvo> <netlist.v> <outdir>}
NETLIST=${2:?falta netlist}
OUTDIR=${3:?falta outdir}
cd "$(dirname "${BASH_SOURCE[0]}")"
vivado -mode batch -nojournal -log "$OUTDIR/vivado.log" -source ${ALVO}.tcl -tclargs "$NETLIST" "$OUTDIR"

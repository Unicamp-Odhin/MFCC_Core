#!/bin/bash

# Run Xilinx Vivado for each benchmark
for benchmark in kintex artymini artix virtex zynq; do
  vivado -mode batch -nolog -nojournal -source $benchmark.tcl
done
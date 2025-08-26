#!/usr/bin/zsh
yosys -p "synth_ecp5 -json ecp5_net_list.json -abc9 -top MFCC_Core" mfcc_256.v
nextpnr-ecp5 --json ecp5_net_list.json --45k \
		--textcfg ecp5_net_list.config --package CABGA381 \
		--speed 6 --lpf-allow-unconstrained
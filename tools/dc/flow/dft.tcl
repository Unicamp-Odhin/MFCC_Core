create_test_protocol \
    -infer_clock \
    -infer_asynch

dft_drc

preview_dft

insert_dft

dft_drc

compile_ultra -incr -scan

dft_drc

compile -incremental -area_effort high

write_file -format verilog -hierarchy -output $DC_DIR/ANC_Netlist_DFT.v
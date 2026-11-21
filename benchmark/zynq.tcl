read_verilog mfcc_wrapper.v
read_verilog mfcc.v
read_xdc xilinx.xdc
set_property PROCESSING_ORDER EARLY [get_files xilinx.xdc]
synth_design -top MFCC_Wrapper -part xc7z020clg484-1
report_utilization -file zynq_utilization_post_route.rpt
report_utilization -hierarchical -file zynq_utilization_hierarchical.rpt
opt_design
place_design
route_design
report_timing_summary -file zynq_timing_post_route.rpt
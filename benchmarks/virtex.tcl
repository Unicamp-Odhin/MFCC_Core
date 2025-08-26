read_verilog mfcc_1024.v
read_xdc xilinx.xdc
set_property PROCESSING_ORDER EARLY [get_files xilinx.xdc]
synth_design -top MFCC_Core -part xc7vx690tffg1761-2
opt_design
place_design
route_design
report_timing_summary -file virtex_timing_post_route.rpt
report_utilization -file virtex_utilization_post_route.rpt
report_utilization -hierarchical -file virtex_utilization_hierarchical.rpt
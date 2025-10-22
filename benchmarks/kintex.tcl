read_verilog mfcc_1024.v
read_xdc xilinx.xdc
set_property PROCESSING_ORDER EARLY [get_files xilinx.xdc]
synth_design -top MFCC_Core -part xc7k325tffg676-2
opt_design
place_design
route_design
report_timing_summary -file kintex_timing_post_route.rpt
report_utilization -file kintex_utilization_post_route.rpt
report_utilization -hierarchical -file kintex_utilization_hierarchical.rpt
report_power -file kintex_power_post_route.rpt
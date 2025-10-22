read_verilog mfcc_wrapper.v
read_verilog mfcc_1024.v
read_xdc xilinx.xdc
set_property PROCESSING_ORDER EARLY [get_files xilinx.xdc]
synth_design -top MFCC_Wrapper -part xc7a100tcsg324-1
report_utilization -file artix_utilization_post_route.rpt
report_utilization -hierarchical -file artix_utilization_hierarchical.rpt
opt_design
place_design
route_design
report_timing_summary -file artix_timing_post_route.rpt
report_utilization -file artix_utilization_post_route.rpt
report_utilization -hierarchical -file artix_utilization_hierarchical.rpt
report_power -file artix_power_post_route.rpt
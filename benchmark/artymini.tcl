read_verilog mfcc_wrapper.v
read_verilog mfcc.v
read_xdc xilinx.xdc
set_property PROCESSING_ORDER EARLY [get_files xilinx.xdc]
synth_design -top MFCC_Wrapper -part xc7a35tcpg236-1
opt_design
place_design
route_design
report_timing_summary -file artymini_timing_post_route.rpt
report_utilization -file artymini_utilization_post_route.rpt
report_utilization -hierarchical -file artymini_utilization_hierarchical.rpt
report_power -file artymini_power_post_route.rpt
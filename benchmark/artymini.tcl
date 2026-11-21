# Parametrizacao do sweep: <netlist.v> <outdir> [<wrapper.v>]
# Sem args, reproduz o comportamento original deste tcl.
set NETLIST [lindex $argv 0]
set OUTDIR  [lindex $argv 1]
set WRAPPER [lindex $argv 2]
if {$NETLIST eq ""} { set NETLIST mfcc.v }
if {$OUTDIR eq ""}  { set OUTDIR fpga/artymini }
if {$WRAPPER eq ""} { set WRAPPER mfcc_wrapper.v }
file mkdir $OUTDIR

read_verilog $WRAPPER
read_verilog $NETLIST
read_xdc xilinx.xdc
set_property PROCESSING_ORDER EARLY [get_files xilinx.xdc]
synth_design -mode out_of_context -top MFCC_Wrapper -part xc7a35tcpg236-1
opt_design
place_design
route_design
report_timing_summary -file $OUTDIR/artymini_timing_post_route.rpt
report_utilization -file $OUTDIR/artymini_utilization_post_route.rpt
report_utilization -hierarchical -file $OUTDIR/artymini_utilization_hierarchical.rpt
report_power -file $OUTDIR/artymini_power_post_route.rpt
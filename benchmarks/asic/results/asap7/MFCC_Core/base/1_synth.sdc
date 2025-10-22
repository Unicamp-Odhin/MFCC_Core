set clk_name main_clk
# set clk_port clk 
set clk_port $::env(CLK_PORT)
set clk_ports_list [list $clk_port]
set clk_period 10
set input_delay 0.46
set output_delay 0.11
create_clock [get_ports $clk_port] -name $clk_name -period $clk_period
###############################################################################
# Basic XDC for MFCC_Core (minimal)
###############################################################################

# Clock constraint (100 MHz → período de 10 ns)

#set_property -dict { PACKAGE_PIN E3  IOSTANDARD LVCMOS33 } [get_ports { clk }];
set_property PACKAGE_PIN Y9 [get_ports {clk}];  # "GCLK" zebdoard
set_property IOSTANDARD LVCMOS33 [get_ports {clk}];
create_clock -name sys_clk -period 10.000 [get_ports clk]
#set_property PACKAGE_PIN Y9 [get_ports {clk}];  # "GCLK" zebdoard

###############################################################################
# OBS:
# - Se só quer analisar uso de recursos e Fmax interno, isso já basta.
# - rst_n não precisa aparecer aqui se não for ligado a um pino.
# - Se depois for integrar com outros blocos, aí sim define delays de I/O.
###############################################################################

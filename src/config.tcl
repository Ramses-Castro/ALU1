# Control Signals
set_property package_pin W7 [get_ports {AE}]
set_property IOSTANDARD LVCMOS33 [get_ports {AE}]
set_property package_pin W6 [get_ports {BE}]
set_property IOSTANDARD LVCMOS33 [get_ports {BE}]
set_property package_pin U8 [get_ports {CE}]
set_property IOSTANDARD LVCMOS33 [get_ports {CE}]
set_property package_pin V8 [get_ports {DE}]
set_property IOSTANDARD LVCMOS33 [get_ports {DE}]
set_property package_pin U5 [get_ports {EE}]
set_property IOSTANDARD LVCMOS33 [get_ports {EE}]
set_property package_pin V5 [get_ports {FE}]
set_property IOSTANDARD LVCMOS33 [get_ports {FE}]
set_property package_pin U7 [get_ports {GE}]
set_property IOSTANDARD LVCMOS33 [get_ports {GE}]

# Display Selection Signals
set_property package_pin W4 [get_ports {select_disp[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {select_disp[3]}]
set_property package_pin V4 [get_ports {select_disp[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {select_disp[2]}]
set_property package_pin U4 [get_ports {select_disp[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {select_disp[1]}]
set_property package_pin U2 [get_ports {select_disp[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {select_disp[0]}]

# Clock Signal
set_property package_pin W5 [get_ports {mclk}]
set_property IOSTANDARD LVCMOS33 [get_ports {mclk}]

# Status Indicators
set_property package_pin L1 [get_ports {zero}]
set_property IOSTANDARD LVCMOS33 [get_ports {zero}]
set_property package_pin P1 [get_ports {error}]
set_property IOSTANDARD LVCMOS33 [get_ports {error}]

# ALU Input Signals
set_property package_pin R2 [get_ports {in1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in1[2]}]
set_property package_pin T1 [get_ports {in1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in1[1]}]
set_property package_pin U1 [get_ports {in1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in1[0]}]

set_property package_pin W2 [get_ports {in2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in2[2]}]
set_property package_pin R3 [get_ports {in2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in2[1]}]
set_property package_pin T2 [get_ports {in2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in2[0]}]

# ALU Output Signals
set_property package_pin T3 [get_ports {op[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {op[1]}]
set_property package_pin V2 [get_ports {op[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {op[0]}]

# Decoded Binary Outputs
set_property package_pin N3 [get_ports {dec_bin[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dec_bin[3]}]
set_property package_pin P3 [get_ports {dec_bin[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dec_bin[2]}]
set_property package_pin U3 [get_ports {dec_bin[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dec_bin[1]}]
set_property package_pin W3 [get_ports {dec_bin[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dec_bin[0]}]

# Units Display Outputs
set_property package_pin V3 [get_ports {unis_bin[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {unis_bin[3]}]
set_property package_pin V13 [get_ports {unis_bin[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {unis_bin[2]}]
set_property package_pin V14 [get_ports {unis_bin[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {unis_bin[1]}]
set_property package_pin U14 [get_ports {unis_bin[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {unis_bin[0]}]

# End of Configuration for Tiny Tapeout ALU Design

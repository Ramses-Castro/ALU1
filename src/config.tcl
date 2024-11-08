# asignaciones de pines para segmentos del display
set_property package_pin w7 [get_ports {AE}]
set_property iostandard lvcmos33 [get_ports {AE}]
set_property package_pin w6 [get_ports {BE}]
set_property iostandard lvcmos33 [get_ports {BE}]
set_property package_pin u8 [get_ports {CE}]
set_property iostandard lvcmos33 [get_ports {CE}]
set_property package_pin v8 [get_ports {DE}]
set_property iostandard lvcmos33 [get_ports {DE}]
set_property package_pin u5 [get_ports {EE}]
set_property iostandard lvcmos33 [get_ports {EE}]
set_property package_pin v5 [get_ports {FE}]
set_property iostandard lvcmos33 [get_ports {FE}]
set_property package_pin u7 [get_ports {GE}]
set_property iostandard lvcmos33 [get_ports {GE}]

# asignaciones de pines para selectores de display
set_property package_pin w4 [get_ports {select_disp[3]}]
set_property iostandard lvcmos33 [get_ports {select_disp[3]}]
set_property package_pin v4 [get_ports {select_disp[2]}]
set_property iostandard lvcmos33 [get_ports {select_disp[2]}]
set_property package_pin u4 [get_ports {select_disp[1]}]
set_property iostandard lvcmos33 [get_ports {select_disp[1]}]
set_property package_pin u2 [get_ports {select_disp[0]}]
set_property iostandard lvcmos33 [get_ports {select_disp[0]}]

# asignación de pin para la señal de reloj principal
set_property package_pin w5 [get_ports {mclk}]
set_property iostandard lvcmos33 [get_ports {mclk}]

# asignación de pines para señales de salida 'zero' y 'error'
set_property package_pin l1 [get_ports {zero}]
set_property iostandard lvcmos33 [get_ports {zero}]
set_property package_pin p1 [get_ports {error}]
set_property iostandard lvcmos33 [get_ports {error}]

# asignación de pines para las entradas 'in1' y 'in2'
set_property package_pin r2 [get_ports {in1[2]}]
set_property iostandard lvcmos33 [get_ports {in1[2]}]
set_property package_pin t1 [get_ports {in1[1]}]
set_property iostandard lvcmos33 [get_ports {in1[1]}]
set_property package_pin u1 [get_ports {in1[0]}]
set_property iostandard lvcmos33 [get_ports {in1[0]}]
set_property package_pin w2 [get_ports {in2[2]}]
set_property iostandard lvcmos33 [get_ports {in2[2]}]
set_property package_pin r3 [get_ports {in2[1]}]
set_property iostandard lvcmos33 [get_ports {in2[1]}]
set_property package_pin t2 [get_ports {in2[0]}]
set_property iostandard lvcmos33 [get_ports {in2[0]}]

# asignación de pines para la entrada de operación 'op'
set_property package_pin t3 [get_ports {op[1]}]
set_property iostandard lvcmos33 [get_ports {op[1]}]
set_property package_pin v2 [get_ports {op[0]}]
set_property iostandard lvcmos33 [get_ports {op[0]}]

# asignación de pines para salida en decenas y unidades
set_property package_pin n3 [get_ports {dec_bin[3]}]
set_property iostandard lvcmos33 [get_ports {dec_bin[3]}]
set_property package_pin p3 [get_ports {dec_bin[2]}]
set_property iostandard lvcmos33 [get_ports {dec_bin[2]}]
set_property package_pin u3 [get_ports {dec_bin[1]}]
set_property iostandard lvcmos33 [get_ports {dec_bin[1]}]
set_property package_pin w3 [get_ports {dec_bin[0]}]
set_property iostandard lvcmos33 [get_ports {dec_bin[0]}]
set_property package_pin v3 [get_ports {unis_bin[3]}]
set_property iostandard lvcmos33 [get_ports {unis_bin[3]}]
set_property package_pin v13 [get_ports {unis_bin[2]}]
set_property iostandard lvcmos33 [get_ports {unis_bin[2]}]
set_property package_pin v14 [get_ports {unis_bin[1]}]
set_property iostandard lvcmos33 [get_ports {unis_bin[1]}]
set_property package_pin u14 [get_ports {unis_bin[0]}]
set_property iostandard lvcmos33 [get_ports {unis_bin[0]}]

# asignación de pines para el reset (activo bajo)
set_property package_pin p8 [get_ports {rst_n}]
set_property iostandard lvcmos33 [get_ports {rst_n}]

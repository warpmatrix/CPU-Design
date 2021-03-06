set_property PACKAGE_PIN U16 [get_ports q[0]]
set_property IOSTANDARD LVCMOS33 [get_ports q[0]]
set_property PACKAGE_PIN E19 [get_ports q[1]]
set_property IOSTANDARD LVCMOS33 [get_ports q[1]]
set_property PACKAGE_PIN U19 [get_ports q[2]]
set_property IOSTANDARD LVCMOS33 [get_ports q[2]]
set_property PACKAGE_PIN V19 [get_ports q[3]]
set_property IOSTANDARD LVCMOS33 [get_ports q[3]]

set_property PACKAGE_PIN W18 [get_ports rco]
set_property IOSTANDARD LVCMOS33 [get_ports rco]

set_property PACKAGE_PIN V17 [get_ports clr_l]
set_property IOSTANDARD LVCMOS33 [get_ports clr_l]

set_property PACKAGE_PIN V16 [get_ports ld_l]
set_property IOSTANDARD LVCMOS33 [get_ports ld_l]

set_property PACKAGE_PIN W16 [get_ports enp]
set_property IOSTANDARD LVCMOS33 [get_ports enp]
set_property PACKAGE_PIN W17 [get_ports ent]
set_property IOSTANDARD LVCMOS33 [get_ports ent]

set_property PACKAGE_PIN W15 [get_ports d[0]]
set_property IOSTANDARD LVCMOS33 [get_ports d[0]]
set_property PACKAGE_PIN V15 [get_ports d[1]]
set_property IOSTANDARD LVCMOS33 [get_ports d[1]]
set_property PACKAGE_PIN W14 [get_ports d[2]]
set_property IOSTANDARD LVCMOS33 [get_ports d[2]]
set_property PACKAGE_PIN W13 [get_ports d[3]]
set_property IOSTANDARD LVCMOS33 [get_ports d[3]]

set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} {get_ports clk}

set_property PACKAGE_PIN U16 [get_ports pc_output[0]]
set_property IOSTANDARD LVCMOS33 [get_ports pc_output[0]]

set_property PACKAGE_PIN E19 [get_ports pc_output[1]]
set_property IOSTANDARD LVCMOS33 [get_ports pc_output[1]]

set_property PACKAGE_PIN U19 [get_ports pc_output[2]]
set_property IOSTANDARD LVCMOS33 [get_ports pc_output[2]]

set_property PACKAGE_PIN V19 [get_ports pc_output[3]]
set_property IOSTANDARD LVCMOS33 [get_ports pc_output[3]]

set_property PACKAGE_PIN W18 [get_ports pc_output[4]]
set_property IOSTANDARD LVCMOS33 [get_ports pc_output[4]]

set_property PACKAGE_PIN U15 [get_ports pc_output[5]]
set_property IOSTANDARD LVCMOS33 [get_ports pc_output[5]]

set_property PACKAGE_PIN U14 [get_ports pc_output[6]]
set_property IOSTANDARD LVCMOS33 [get_ports pc_output[6]]

set_property PACKAGE_PIN V14 [get_ports pc_output[7]]
set_property IOSTANDARD LVCMOS33 [get_ports pc_output[7]]

set_property PACKAGE_PIN V13 [get_ports Write_data_output[0]]
set_property IOSTANDARD LVCMOS33 [get_ports Write_data_output[0]]

set_property PACKAGE_PIN V3 [get_ports Write_data_output[1]]
set_property IOSTANDARD LVCMOS33 [get_ports Write_data_output[1]]

set_property PACKAGE_PIN W3 [get_ports Write_data_output[2]]
set_property IOSTANDARD LVCMOS33 [get_ports Write_data_output[2]]

set_property PACKAGE_PIN U3 [get_ports Write_data_output[3]]
set_property IOSTANDARD LVCMOS33 [get_ports Write_data_output[3]]

set_property PACKAGE_PIN P3 [get_ports Write_data_output[4]]
set_property IOSTANDARD LVCMOS33 [get_ports Write_data_output[4]]

set_property PACKAGE_PIN N3 [get_ports Write_data_output[5]]
set_property IOSTANDARD LVCMOS33 [get_ports Write_data_output[5]]

set_property PACKAGE_PIN P1 [get_ports Write_data_output[6]]
set_property IOSTANDARD LVCMOS33 [get_ports Write_data_output[6]]

set_property PACKAGE_PIN L1 [get_ports Write_data_output[7]]
set_property IOSTANDARD LVCMOS33 [get_ports Write_data_output[7]]

#set_property PACKAGE_PIN W5 [get_ports clk]
#set_property IOSTANDARD LVCMOS33 [get_ports clk]
#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} {get_ports clk}

set_property PACKAGE_PIN W19 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]
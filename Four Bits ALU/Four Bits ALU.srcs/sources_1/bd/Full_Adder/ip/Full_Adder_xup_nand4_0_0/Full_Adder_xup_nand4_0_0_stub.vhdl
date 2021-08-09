-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Jun  8 13:34:27 2019
-- Host        : DESKTOP-TNLP39B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {d:/Program/Vivado Program/Four Bits ALU/Four Bits
--               ALU.srcs/sources_1/bd/Full_Adder/ip/Full_Adder_xup_nand4_0_0/Full_Adder_xup_nand4_0_0_stub.vhdl}
-- Design      : Full_Adder_xup_nand4_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder_xup_nand4_0_0 is
  Port ( 
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );

end Full_Adder_xup_nand4_0_0;

architecture stub of Full_Adder_xup_nand4_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a,b,c,d,y";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xup_nand4,Vivado 2018.3";
begin
end;

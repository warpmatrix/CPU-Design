-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Jun  8 13:34:27 2019
-- Host        : DESKTOP-TNLP39B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {d:/Program/Vivado Program/Four Bits ALU/Four Bits
--               ALU.srcs/sources_1/bd/Full_Adder/ip/Full_Adder_decode138_0_0/Full_Adder_decode138_0_0_stub.vhdl}
-- Design      : Full_Adder_decode138_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder_decode138_0_0 is
  Port ( 
    A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    E1 : in STD_LOGIC;
    E2_n : in STD_LOGIC;
    E3_n : in STD_LOGIC;
    Y0_n : out STD_LOGIC;
    Y1_n : out STD_LOGIC;
    Y2_n : out STD_LOGIC;
    Y3_n : out STD_LOGIC;
    Y4_n : out STD_LOGIC;
    Y5_n : out STD_LOGIC;
    Y6_n : out STD_LOGIC;
    Y7_n : out STD_LOGIC
  );

end Full_Adder_decode138_0_0;

architecture stub of Full_Adder_decode138_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A0,A1,A2,E1,E2_n,E3_n,Y0_n,Y1_n,Y2_n,Y3_n,Y4_n,Y5_n,Y6_n,Y7_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "decode138,Vivado 2018.3";
begin
end;

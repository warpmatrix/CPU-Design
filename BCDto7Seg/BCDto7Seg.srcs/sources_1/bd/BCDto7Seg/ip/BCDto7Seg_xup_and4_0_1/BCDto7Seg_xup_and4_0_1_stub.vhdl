-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Apr 14 20:23:20 2019
-- Host        : DESKTOP-TNLP39B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top BCDto7Seg_xup_and4_0_1 -prefix
--               BCDto7Seg_xup_and4_0_1_ BCDto7Seg_xup_and4_0_1_stub.vhdl
-- Design      : BCDto7Seg_xup_and4_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCDto7Seg_xup_and4_0_1 is
  Port ( 
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );

end BCDto7Seg_xup_and4_0_1;

architecture stub of BCDto7Seg_xup_and4_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a,b,c,d,y";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xup_and4,Vivado 2018.3";
begin
end;

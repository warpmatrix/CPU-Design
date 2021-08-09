-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Thu Nov 21 23:34:27 2019
-- Host        : DESKTOP-TNLP39B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {d:/Program/Vivado Program/Trotting Horse Lamp/Trotting Horse
--               Lamp.srcs/sources_1/ip/p138_0/p138_0_stub.vhdl}
-- Design      : p138_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity p138_0 is
  Port ( 
    g1 : in STD_LOGIC;
    g2a_l : in STD_LOGIC;
    g2b_l : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 2 downto 0 );
    y_l : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end p138_0;

architecture stub of p138_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "g1,g2a_l,g2b_l,a[2:0],y_l[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "p138,Vivado 2019.2";
begin
end;

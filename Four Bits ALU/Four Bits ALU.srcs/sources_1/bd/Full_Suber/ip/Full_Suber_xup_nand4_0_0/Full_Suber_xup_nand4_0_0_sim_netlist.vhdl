-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Jun  8 13:34:27 2019
-- Host        : DESKTOP-TNLP39B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top Full_Suber_xup_nand4_0_0 -prefix
--               Full_Suber_xup_nand4_0_0_ Full_Adder_xup_nand4_0_0_sim_netlist.vhdl
-- Design      : Full_Adder_xup_nand4_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Full_Suber_xup_nand4_0_0_xup_nand4 is
  port (
    y : out STD_LOGIC;
    d : in STD_LOGIC;
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC
  );
end Full_Suber_xup_nand4_0_0_xup_nand4;

architecture STRUCTURE of Full_Suber_xup_nand4_0_0_xup_nand4 is
begin
\y__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => d,
      I1 => a,
      I2 => b,
      I3 => c,
      O => y
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Full_Suber_xup_nand4_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Full_Suber_xup_nand4_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Full_Suber_xup_nand4_0_0 : entity is "Full_Adder_xup_nand4_0_0,xup_nand4,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Full_Suber_xup_nand4_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Full_Suber_xup_nand4_0_0 : entity is "xup_nand4,Vivado 2018.3";
end Full_Suber_xup_nand4_0_0;

architecture STRUCTURE of Full_Suber_xup_nand4_0_0 is
begin
inst: entity work.Full_Suber_xup_nand4_0_0_xup_nand4
     port map (
      a => a,
      b => b,
      c => c,
      d => d,
      y => y
    );
end STRUCTURE;

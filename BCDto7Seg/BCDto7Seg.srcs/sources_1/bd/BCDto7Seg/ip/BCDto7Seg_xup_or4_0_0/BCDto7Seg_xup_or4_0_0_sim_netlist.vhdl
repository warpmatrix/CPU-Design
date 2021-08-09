-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Apr 14 20:42:33 2019
-- Host        : DESKTOP-TNLP39B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {d:/Program/Vivado
--               Program/BCDto7Seg/BCDto7Seg.srcs/sources_1/bd/BCDto7Seg/ip/BCDto7Seg_xup_or4_0_0/BCDto7Seg_xup_or4_0_0_sim_netlist.vhdl}
-- Design      : BCDto7Seg_xup_or4_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BCDto7Seg_xup_or4_0_0_xup_or4 is
  port (
    y : out STD_LOGIC;
    d : in STD_LOGIC;
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BCDto7Seg_xup_or4_0_0_xup_or4 : entity is "xup_or4";
end BCDto7Seg_xup_or4_0_0_xup_or4;

architecture STRUCTURE of BCDto7Seg_xup_or4_0_0_xup_or4 is
begin
\y__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
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
entity BCDto7Seg_xup_or4_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BCDto7Seg_xup_or4_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BCDto7Seg_xup_or4_0_0 : entity is "BCDto7Seg_xup_or4_0_0,xup_or4,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of BCDto7Seg_xup_or4_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of BCDto7Seg_xup_or4_0_0 : entity is "xup_or4,Vivado 2018.3";
end BCDto7Seg_xup_or4_0_0;

architecture STRUCTURE of BCDto7Seg_xup_or4_0_0 is
begin
inst: entity work.BCDto7Seg_xup_or4_0_0_xup_or4
     port map (
      a => a,
      b => b,
      c => c,
      d => d,
      y => y
    );
end STRUCTURE;

-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Jun  8 13:34:27 2019
-- Host        : DESKTOP-TNLP39B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {d:/Program/Vivado Program/Four Bits ALU/Four Bits
--               ALU.srcs/sources_1/bd/Full_Adder/ip/Full_Adder_decode138_0_0/Full_Adder_decode138_0_0_sim_netlist.vhdl}
-- Design      : Full_Adder_decode138_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Full_Adder_decode138_0_0_decode138 is
  port (
    Y2_n : out STD_LOGIC;
    Y0_n : out STD_LOGIC;
    Y1_n : out STD_LOGIC;
    Y3_n : out STD_LOGIC;
    Y4_n : out STD_LOGIC;
    Y7_n : out STD_LOGIC;
    Y5_n : out STD_LOGIC;
    Y6_n : out STD_LOGIC;
    A0 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    E3_n : in STD_LOGIC;
    E1 : in STD_LOGIC;
    E2_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Full_Adder_decode138_0_0_decode138 : entity is "decode138";
end Full_Adder_decode138_0_0_decode138;

architecture STRUCTURE of Full_Adder_decode138_0_0_decode138 is
begin
Y0_n_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => A1,
      I1 => A0,
      I2 => A2,
      I3 => E3_n,
      I4 => E1,
      I5 => E2_n,
      O => Y0_n
    );
Y1_n_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFFFF"
    )
        port map (
      I0 => A0,
      I1 => A2,
      I2 => A1,
      I3 => E3_n,
      I4 => E1,
      I5 => E2_n,
      O => Y1_n
    );
Y2_n_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEFFFFF"
    )
        port map (
      I0 => A0,
      I1 => A2,
      I2 => A1,
      I3 => E3_n,
      I4 => E1,
      I5 => E2_n,
      O => Y2_n
    );
Y3_n_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBFFFFF"
    )
        port map (
      I0 => A2,
      I1 => A0,
      I2 => A1,
      I3 => E3_n,
      I4 => E1,
      I5 => E2_n,
      O => Y3_n
    );
Y4_n_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFFFF"
    )
        port map (
      I0 => A2,
      I1 => A0,
      I2 => A1,
      I3 => E3_n,
      I4 => E1,
      I5 => E2_n,
      O => Y4_n
    );
Y5_n_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBFFFFF"
    )
        port map (
      I0 => A1,
      I1 => A2,
      I2 => A0,
      I3 => E3_n,
      I4 => E1,
      I5 => E2_n,
      O => Y5_n
    );
Y6_n_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBFFFFF"
    )
        port map (
      I0 => A0,
      I1 => A2,
      I2 => A1,
      I3 => E3_n,
      I4 => E1,
      I5 => E2_n,
      O => Y6_n
    );
Y7_n_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF7FFFFF"
    )
        port map (
      I0 => A2,
      I1 => A0,
      I2 => A1,
      I3 => E3_n,
      I4 => E1,
      I5 => E2_n,
      O => Y7_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Full_Adder_decode138_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Full_Adder_decode138_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Full_Adder_decode138_0_0 : entity is "Full_Adder_decode138_0_0,decode138,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Full_Adder_decode138_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Full_Adder_decode138_0_0 : entity is "decode138,Vivado 2018.3";
end Full_Adder_decode138_0_0;

architecture STRUCTURE of Full_Adder_decode138_0_0 is
begin
inst: entity work.Full_Adder_decode138_0_0_decode138
     port map (
      A0 => A0,
      A1 => A1,
      A2 => A2,
      E1 => E1,
      E2_n => E2_n,
      E3_n => E3_n,
      Y0_n => Y0_n,
      Y1_n => Y1_n,
      Y2_n => Y2_n,
      Y3_n => Y3_n,
      Y4_n => Y4_n,
      Y5_n => Y5_n,
      Y6_n => Y6_n,
      Y7_n => Y7_n
    );
end STRUCTURE;

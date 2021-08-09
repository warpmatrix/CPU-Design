//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sun Apr 14 20:47:23 2019
//Host        : DESKTOP-TNLP39B running 64-bit major release  (build 9200)
//Command     : generate_target BCDto7Seg_wrapper.bd
//Design      : BCDto7Seg_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BCDto7Seg_wrapper
   (BCD1,
    BCD2,
    BCD4,
    BCD8,
    D1,
    D2,
    D3,
    D4,
    D5,
    D6,
    D7,
    DigIn1,
    DigIn2,
    DigIn3,
    DigIn4,
    DigOut1,
    DigOut2,
    DigOut3,
    DigOut4);
  input BCD1;
  input BCD2;
  input BCD4;
  input BCD8;
  output D1;
  output D2;
  output D3;
  output D4;
  output D5;
  output D6;
  output D7;
  input DigIn1;
  input DigIn2;
  input DigIn3;
  input DigIn4;
  output DigOut1;
  output DigOut2;
  output DigOut3;
  output DigOut4;

  wire BCD1;
  wire BCD2;
  wire BCD4;
  wire BCD8;
  wire D1;
  wire D2;
  wire D3;
  wire D4;
  wire D5;
  wire D6;
  wire D7;
  wire DigIn1;
  wire DigIn2;
  wire DigIn3;
  wire DigIn4;
  wire DigOut1;
  wire DigOut2;
  wire DigOut3;
  wire DigOut4;

  BCDto7Seg BCDto7Seg_i
       (.BCD1(BCD1),
        .BCD2(BCD2),
        .BCD4(BCD4),
        .BCD8(BCD8),
        .D1(D1),
        .D2(D2),
        .D3(D3),
        .D4(D4),
        .D5(D5),
        .D6(D6),
        .D7(D7),
        .DigIn1(DigIn1),
        .DigIn2(DigIn2),
        .DigIn3(DigIn3),
        .DigIn4(DigIn4),
        .DigOut1(DigOut1),
        .DigOut2(DigOut2),
        .DigOut3(DigOut3),
        .DigOut4(DigOut4));
endmodule

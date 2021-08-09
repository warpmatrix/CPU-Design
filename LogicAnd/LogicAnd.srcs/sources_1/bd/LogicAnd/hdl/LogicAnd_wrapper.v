//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat May 11 14:41:46 2019
//Host        : DESKTOP-TNLP39B running 64-bit major release  (build 9200)
//Command     : generate_target LogicAnd_wrapper.bd
//Design      : LogicAnd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LogicAnd_wrapper
   (DigOut1,
    InDig1,
    a_0,
    b_0,
    testIn,
    testOut,
    y_0);
  output DigOut1;
  input InDig1;
  input a_0;
  input b_0;
  input testIn;
  output testOut;
  output y_0;

  wire DigOut1;
  wire InDig1;
  wire a_0;
  wire b_0;
  wire testIn;
  wire testOut;
  wire y_0;

  LogicAnd LogicAnd_i
       (.DigOut1(DigOut1),
        .InDig1(InDig1),
        .a_0(a_0),
        .b_0(b_0),
        .testIn(testIn),
        .testOut(testOut),
        .y_0(y_0));
endmodule

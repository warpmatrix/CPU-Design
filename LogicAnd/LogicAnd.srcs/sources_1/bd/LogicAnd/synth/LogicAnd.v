//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat May 11 14:41:46 2019
//Host        : DESKTOP-TNLP39B running 64-bit major release  (build 9200)
//Command     : generate_target LogicAnd.bd
//Design      : LogicAnd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "LogicAnd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=LogicAnd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "LogicAnd.hwdef" *) 
module LogicAnd
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

  wire InDig1_1;
  wire a_0_1;
  wire b_0_1;
  wire testIn_1;
  wire xup_and2_0_y;

  assign DigOut1 = InDig1_1;
  assign InDig1_1 = InDig1;
  assign a_0_1 = a_0;
  assign b_0_1 = b_0;
  assign testIn_1 = testIn;
  assign testOut = testIn_1;
  assign y_0 = xup_and2_0_y;
  LogicAnd_xup_and2_0_0 xup_and2_0
       (.a(a_0_1),
        .b(b_0_1),
        .y(xup_and2_0_y));
endmodule

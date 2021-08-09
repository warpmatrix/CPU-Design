//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sun Apr 14 20:47:23 2019
//Host        : DESKTOP-TNLP39B running 64-bit major release  (build 9200)
//Command     : generate_target BCDto7Seg.bd
//Design      : BCDto7Seg
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BCDto7Seg,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BCDto7Seg,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=36,numReposBlks=36,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "BCDto7Seg.hwdef" *) 
module BCDto7Seg
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

  wire BCD1_1;
  wire BCD1_INV_y;
  wire BCD2_1;
  wire BCD2_INV_y;
  wire BCD4_1;
  wire BCD4_INV_y;
  wire BCD8_1;
  wire BCD8_INV_y;
  wire D7_CA1_y;
  wire DigIn1_1;
  wire DigIn2_1;
  wire DigIn3_1;
  wire DigIn4_1;
  wire xup_and2_0_y;
  wire xup_and3_0_y;
  wire xup_and3_10_y;
  wire xup_and3_11_y;
  wire xup_and3_12_y;
  wire xup_and3_1_y;
  wire xup_and3_2_y;
  wire xup_and3_3_y;
  wire xup_and3_4_y;
  wire xup_and3_5_y;
  wire xup_and3_6_y;
  wire xup_and3_7_y;
  wire xup_and3_8_y;
  wire xup_and3_9_y;
  wire xup_and4_0_y;
  wire xup_and4_1_y;
  wire xup_and4_2_y;
  wire xup_and4_3_y;
  wire xup_and4_4_y;
  wire xup_and4_5_y;
  wire xup_and4_6_y;
  wire xup_and4_7_y;
  wire xup_or2_0_y;
  wire xup_or3_0_y;
  wire xup_or3_1_y;
  wire xup_or3_2_y;
  wire xup_or4_0_y;
  wire xup_or4_1_y;
  wire xup_or4_2_y;
  wire xup_xor2_0_y;
  wire xup_xor2_1_y;

  assign BCD1_1 = BCD1;
  assign BCD2_1 = BCD2;
  assign BCD4_1 = BCD4;
  assign BCD8_1 = BCD8;
  assign D1 = xup_or2_0_y;
  assign D2 = xup_or4_2_y;
  assign D3 = xup_or3_2_y;
  assign D4 = xup_or4_1_y;
  assign D5 = xup_or3_0_y;
  assign D6 = xup_or4_0_y;
  assign D7 = xup_or3_1_y;
  assign DigIn1_1 = DigIn1;
  assign DigIn2_1 = DigIn2;
  assign DigIn3_1 = DigIn3;
  assign DigIn4_1 = DigIn4;
  assign DigOut1 = DigIn1_1;
  assign DigOut2 = DigIn2_1;
  assign DigOut3 = DigIn3_1;
  assign DigOut4 = DigIn4_1;
  BCDto7Seg_xup_inv_0_0 BCD1_INV
       (.a(BCD1_1),
        .y(BCD1_INV_y));
  BCDto7Seg_BCD1_INV_0 BCD2_INV
       (.a(BCD2_1),
        .y(BCD2_INV_y));
  BCDto7Seg_BCD2_INV_0 BCD4_INV
       (.a(BCD4_1),
        .y(BCD4_INV_y));
  BCDto7Seg_BCD2_INV1_0 BCD8_INV
       (.a(BCD8_1),
        .y(BCD8_INV_y));
  BCDto7Seg_D7_CA_0 D7_CA1
       (.a(BCD8_1),
        .b(BCD4_1),
        .c(BCD2_1),
        .y(D7_CA1_y));
  BCDto7Seg_xup_and2_0_1 xup_and2_0
       (.a(BCD8_INV_y),
        .b(BCD1_1),
        .y(xup_and2_0_y));
  BCDto7Seg_xup_and3_0_0 xup_and3_0
       (.a(BCD8_INV_y),
        .b(BCD2_INV_y),
        .c(xup_xor2_0_y),
        .y(xup_and3_0_y));
  BCDto7Seg_xup_and3_1_0 xup_and3_1
       (.a(BCD8_1),
        .b(BCD1_1),
        .c(xup_xor2_1_y),
        .y(xup_and3_1_y));
  BCDto7Seg_xup_and3_10_0 xup_and3_10
       (.a(BCD8_INV_y),
        .b(BCD4_INV_y),
        .c(BCD1_1),
        .y(xup_and3_10_y));
  BCDto7Seg_xup_and3_11_0 xup_and3_11
       (.a(BCD8_INV_y),
        .b(BCD4_INV_y),
        .c(BCD2_1),
        .y(xup_and3_11_y));
  BCDto7Seg_xup_and3_12_0 xup_and3_12
       (.a(BCD8_INV_y),
        .b(BCD2_1),
        .c(BCD1_1),
        .y(xup_and3_12_y));
  BCDto7Seg_xup_and3_2_0 xup_and3_2
       (.a(BCD4_1),
        .b(BCD2_1),
        .c(BCD1_INV_y),
        .y(xup_and3_2_y));
  BCDto7Seg_xup_and3_3_0 xup_and3_3
       (.a(BCD8_1),
        .b(BCD4_1),
        .c(BCD1_INV_y),
        .y(xup_and3_3_y));
  BCDto7Seg_xup_and3_4_0 xup_and3_4
       (.a(BCD8_1),
        .b(BCD2_1),
        .c(BCD1_1),
        .y(xup_and3_4_y));
  BCDto7Seg_xup_and3_5_0 xup_and3_5
       (.a(BCD8_1),
        .b(BCD4_1),
        .c(BCD1_INV_y),
        .y(xup_and3_5_y));
  BCDto7Seg_xup_and3_6_0 xup_and3_6
       (.a(BCD8_1),
        .b(BCD4_1),
        .c(BCD2_1),
        .y(xup_and3_6_y));
  BCDto7Seg_xup_and3_7_0 xup_and3_7
       (.a(BCD4_1),
        .b(BCD2_1),
        .c(BCD1_1),
        .y(xup_and3_7_y));
  BCDto7Seg_xup_and3_8_0 xup_and3_8
       (.a(BCD8_INV_y),
        .b(BCD4_1),
        .c(BCD2_INV_y),
        .y(xup_and3_8_y));
  BCDto7Seg_xup_and3_9_0 xup_and3_9
       (.a(BCD4_INV_y),
        .b(BCD2_INV_y),
        .c(BCD1_1),
        .y(xup_and3_9_y));
  BCDto7Seg_xup_and4_0_1 xup_and4_0
       (.a(BCD8_INV_y),
        .b(BCD4_1),
        .c(BCD2_INV_y),
        .d(BCD1_1),
        .y(xup_and4_0_y));
  BCDto7Seg_xup_and4_1_0 xup_and4_1
       (.a(BCD8_INV_y),
        .b(BCD4_INV_y),
        .c(BCD2_1),
        .d(BCD1_INV_y),
        .y(xup_and4_1_y));
  BCDto7Seg_xup_and4_2_0 xup_and4_2
       (.a(BCD8_INV_y),
        .b(BCD4_INV_y),
        .c(BCD2_INV_y),
        .d(BCD1_1),
        .y(xup_and4_2_y));
  BCDto7Seg_xup_and4_3_0 xup_and4_3
       (.a(BCD8_INV_y),
        .b(BCD4_1),
        .c(BCD2_INV_y),
        .d(BCD1_INV_y),
        .y(xup_and4_3_y));
  BCDto7Seg_xup_and4_4_0 xup_and4_4
       (.a(BCD8_1),
        .b(BCD4_INV_y),
        .c(BCD2_1),
        .d(BCD1_INV_y),
        .y(xup_and4_4_y));
  BCDto7Seg_xup_and4_5_0 xup_and4_5
       (.a(BCD8_1),
        .b(BCD4_1),
        .c(BCD2_INV_y),
        .d(BCD1_1),
        .y(xup_and4_5_y));
  BCDto7Seg_xup_and4_6_0 xup_and4_6
       (.a(BCD8_INV_y),
        .b(BCD4_1),
        .c(BCD2_1),
        .d(BCD1_1),
        .y(xup_and4_6_y));
  BCDto7Seg_xup_and4_7_0 xup_and4_7
       (.a(BCD8_1),
        .b(BCD4_1),
        .c(BCD2_INV_y),
        .d(BCD1_INV_y),
        .y(xup_and4_7_y));
  BCDto7Seg_xup_or2_0_0 xup_or2_0
       (.a(xup_and3_0_y),
        .b(xup_and3_1_y),
        .y(xup_or2_0_y));
  BCDto7Seg_xup_or3_0_0 xup_or3_0
       (.a(xup_and3_8_y),
        .b(xup_and3_9_y),
        .c(xup_and2_0_y),
        .y(xup_or3_0_y));
  BCDto7Seg_xup_or3_1_0 xup_or3_1
       (.a(D7_CA1_y),
        .b(xup_and4_6_y),
        .c(xup_and4_7_y),
        .y(xup_or3_1_y));
  BCDto7Seg_xup_or3_2_0 xup_or3_2
       (.a(xup_and3_5_y),
        .b(xup_and3_6_y),
        .c(xup_and4_1_y),
        .y(xup_or3_2_y));
  BCDto7Seg_xup_or4_0_0 xup_or4_0
       (.a(xup_and3_10_y),
        .b(xup_and3_11_y),
        .c(xup_and3_12_y),
        .d(xup_and4_5_y),
        .y(xup_or4_0_y));
  BCDto7Seg_xup_or4_1_0 xup_or4_1
       (.a(xup_and4_2_y),
        .b(xup_and4_3_y),
        .c(xup_and3_7_y),
        .d(xup_and4_4_y),
        .y(xup_or4_1_y));
  BCDto7Seg_xup_or4_2_0 xup_or4_2
       (.a(xup_and4_0_y),
        .b(xup_and3_2_y),
        .c(xup_and3_3_y),
        .d(xup_and3_4_y),
        .y(xup_or4_2_y));
  BCDto7Seg_xup_xor2_0_0 xup_xor2_0
       (.a(BCD4_1),
        .b(BCD1_1),
        .y(xup_xor2_0_y));
  BCDto7Seg_xup_xor2_0_1 xup_xor2_1
       (.a(BCD2_1),
        .b(BCD4_1),
        .y(xup_xor2_1_y));
endmodule

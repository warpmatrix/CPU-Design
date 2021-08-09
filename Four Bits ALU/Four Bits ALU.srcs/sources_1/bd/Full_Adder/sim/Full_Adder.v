//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat Jun  8 13:33:37 2019
//Host        : DESKTOP-TNLP39B running 64-bit major release  (build 9200)
//Command     : generate_target Full_Adder.bd
//Design      : Full_Adder
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Full_Adder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Full_Adder,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Full_Adder.hwdef" *) 
module Full_Adder
   (A,
    B,
    C,
    Carry,
    Sum);
  input A;
  input B;
  input C;
  output Carry;
  output Sum;

  wire A0_0_1;
  wire A1_0_1;
  wire A2_0_1;
  wire decode138_0_Y1_n;
  wire decode138_0_Y2_n;
  wire decode138_0_Y3_n;
  wire decode138_0_Y4_n;
  wire decode138_0_Y5_n;
  wire decode138_0_Y6_n;
  wire decode138_0_Y7_n;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire xup_nand4_0_y;
  wire xup_nand4_1_y;

  assign A0_0_1 = A;
  assign A1_0_1 = B;
  assign A2_0_1 = C;
  assign Carry = xup_nand4_1_y;
  assign Sum = xup_nand4_0_y;
  Full_Adder_xlconstant_0_1 High
       (.dout(xlconstant_1_dout));
  Full_Adder_xlconstant_0_0 Low
       (.dout(xlconstant_0_dout));
  Full_Adder_decode138_0_0 decode138_0
       (.A0(A0_0_1),
        .A1(A1_0_1),
        .A2(A2_0_1),
        .E1(xlconstant_1_dout),
        .E2_n(xlconstant_0_dout),
        .E3_n(xlconstant_0_dout),
        .Y1_n(decode138_0_Y1_n),
        .Y2_n(decode138_0_Y2_n),
        .Y3_n(decode138_0_Y3_n),
        .Y4_n(decode138_0_Y4_n),
        .Y5_n(decode138_0_Y5_n),
        .Y6_n(decode138_0_Y6_n),
        .Y7_n(decode138_0_Y7_n));
  Full_Adder_xup_nand4_0_0 xup_nand4_0
       (.a(decode138_0_Y1_n),
        .b(decode138_0_Y2_n),
        .c(decode138_0_Y4_n),
        .d(decode138_0_Y7_n),
        .y(xup_nand4_0_y));
  Full_Adder_xup_nand4_0_1 xup_nand4_1
       (.a(decode138_0_Y3_n),
        .b(decode138_0_Y5_n),
        .c(decode138_0_Y6_n),
        .d(decode138_0_Y7_n),
        .y(xup_nand4_1_y));
endmodule

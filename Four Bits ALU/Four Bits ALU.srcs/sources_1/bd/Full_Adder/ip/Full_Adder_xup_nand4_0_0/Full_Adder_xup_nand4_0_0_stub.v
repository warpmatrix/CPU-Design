// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Jun  8 13:34:27 2019
// Host        : DESKTOP-TNLP39B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/Program/Vivado Program/Four Bits ALU/Four Bits
//               ALU.srcs/sources_1/bd/Full_Adder/ip/Full_Adder_xup_nand4_0_0/Full_Adder_xup_nand4_0_0_stub.v}
// Design      : Full_Adder_xup_nand4_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xup_nand4,Vivado 2018.3" *)
module Full_Adder_xup_nand4_0_0(a, b, c, d, y)
/* synthesis syn_black_box black_box_pad_pin="a,b,c,d,y" */;
  input a;
  input b;
  input c;
  input d;
  output y;
endmodule

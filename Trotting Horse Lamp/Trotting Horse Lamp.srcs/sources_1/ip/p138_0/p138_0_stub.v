// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Thu Nov 21 23:34:27 2019
// Host        : DESKTOP-TNLP39B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/Program/Vivado Program/Trotting Horse Lamp/Trotting Horse
//               Lamp.srcs/sources_1/ip/p138_0/p138_0_stub.v}
// Design      : p138_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "p138,Vivado 2019.2" *)
module p138_0(g1, g2a_l, g2b_l, a, y_l)
/* synthesis syn_black_box black_box_pad_pin="g1,g2a_l,g2b_l,a[2:0],y_l[7:0]" */;
  input g1;
  input g2a_l;
  input g2b_l;
  input [2:0]a;
  output [7:0]y_l;
endmodule

// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Apr 14 20:21:45 2019
// Host        : DESKTOP-TNLP39B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top BCDto7Seg_BCD2_INV1_0 -prefix
//               BCDto7Seg_BCD2_INV1_0_ BCDto7Seg_xup_inv_0_0_stub.v
// Design      : BCDto7Seg_xup_inv_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xup_inv,Vivado 2018.3" *)
module BCDto7Seg_BCD2_INV1_0(a, y)
/* synthesis syn_black_box black_box_pad_pin="a,y" */;
  input a;
  output y;
endmodule

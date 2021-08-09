// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Jun  8 13:34:27 2019
// Host        : DESKTOP-TNLP39B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top Full_Suber_decode138_0_0 -prefix
//               Full_Suber_decode138_0_0_ Full_Adder_decode138_0_0_sim_netlist.v
// Design      : Full_Adder_decode138_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Full_Adder_decode138_0_0,decode138,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "decode138,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module Full_Suber_decode138_0_0
   (A0,
    A1,
    A2,
    E1,
    E2_n,
    E3_n,
    Y0_n,
    Y1_n,
    Y2_n,
    Y3_n,
    Y4_n,
    Y5_n,
    Y6_n,
    Y7_n);
  input A0;
  input A1;
  input A2;
  input E1;
  input E2_n;
  input E3_n;
  output Y0_n;
  output Y1_n;
  output Y2_n;
  output Y3_n;
  output Y4_n;
  output Y5_n;
  output Y6_n;
  output Y7_n;

  wire A0;
  wire A1;
  wire A2;
  wire E1;
  wire E2_n;
  wire E3_n;
  wire Y0_n;
  wire Y1_n;
  wire Y2_n;
  wire Y3_n;
  wire Y4_n;
  wire Y5_n;
  wire Y6_n;
  wire Y7_n;

  Full_Suber_decode138_0_0_decode138 inst
       (.A0(A0),
        .A1(A1),
        .A2(A2),
        .E1(E1),
        .E2_n(E2_n),
        .E3_n(E3_n),
        .Y0_n(Y0_n),
        .Y1_n(Y1_n),
        .Y2_n(Y2_n),
        .Y3_n(Y3_n),
        .Y4_n(Y4_n),
        .Y5_n(Y5_n),
        .Y6_n(Y6_n),
        .Y7_n(Y7_n));
endmodule

module Full_Suber_decode138_0_0_decode138
   (Y2_n,
    Y0_n,
    Y1_n,
    Y3_n,
    Y4_n,
    Y7_n,
    Y5_n,
    Y6_n,
    A0,
    A2,
    A1,
    E3_n,
    E1,
    E2_n);
  output Y2_n;
  output Y0_n;
  output Y1_n;
  output Y3_n;
  output Y4_n;
  output Y7_n;
  output Y5_n;
  output Y6_n;
  input A0;
  input A2;
  input A1;
  input E3_n;
  input E1;
  input E2_n;

  wire A0;
  wire A1;
  wire A2;
  wire E1;
  wire E2_n;
  wire E3_n;
  wire Y0_n;
  wire Y1_n;
  wire Y2_n;
  wire Y3_n;
  wire Y4_n;
  wire Y5_n;
  wire Y6_n;
  wire Y7_n;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    Y0_n_INST_0
       (.I0(A1),
        .I1(A0),
        .I2(A2),
        .I3(E3_n),
        .I4(E1),
        .I5(E2_n),
        .O(Y0_n));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    Y1_n_INST_0
       (.I0(A0),
        .I1(A2),
        .I2(A1),
        .I3(E3_n),
        .I4(E1),
        .I5(E2_n),
        .O(Y1_n));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    Y2_n_INST_0
       (.I0(A0),
        .I1(A2),
        .I2(A1),
        .I3(E3_n),
        .I4(E1),
        .I5(E2_n),
        .O(Y2_n));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFFFFF)) 
    Y3_n_INST_0
       (.I0(A2),
        .I1(A0),
        .I2(A1),
        .I3(E3_n),
        .I4(E1),
        .I5(E2_n),
        .O(Y3_n));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    Y4_n_INST_0
       (.I0(A2),
        .I1(A0),
        .I2(A1),
        .I3(E3_n),
        .I4(E1),
        .I5(E2_n),
        .O(Y4_n));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFFFFF)) 
    Y5_n_INST_0
       (.I0(A1),
        .I1(A2),
        .I2(A0),
        .I3(E3_n),
        .I4(E1),
        .I5(E2_n),
        .O(Y5_n));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFFFFF)) 
    Y6_n_INST_0
       (.I0(A0),
        .I1(A2),
        .I2(A1),
        .I3(E3_n),
        .I4(E1),
        .I5(E2_n),
        .O(Y6_n));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFFFF)) 
    Y7_n_INST_0
       (.I0(A2),
        .I1(A0),
        .I2(A1),
        .I3(E3_n),
        .I4(E1),
        .I5(E2_n),
        .O(Y7_n));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

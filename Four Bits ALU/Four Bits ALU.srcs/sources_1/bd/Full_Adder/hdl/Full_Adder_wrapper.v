//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat Jun  8 13:33:37 2019
//Host        : DESKTOP-TNLP39B running 64-bit major release  (build 9200)
//Command     : generate_target Full_Adder_wrapper.bd
//Design      : Full_Adder_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Full_Adder_wrapper
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

  wire A;
  wire B;
  wire C;
  wire Carry;
  wire Sum;

  Full_Adder Full_Adder_i
       (.A(A),
        .B(B),
        .C(C),
        .Carry(Carry),
        .Sum(Sum));
endmodule

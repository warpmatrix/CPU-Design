//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sat Jun  8 13:49:18 2019
//Host        : DESKTOP-TNLP39B running 64-bit major release  (build 9200)
//Command     : generate_target Full_Suber_wrapper.bd
//Design      : Full_Suber_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Full_Suber_wrapper
   (A,
    B,
    Borrow,
    C,
    Diff);
  input A;
  input B;
  output Borrow;
  input C;
  output Diff;

  wire A;
  wire B;
  wire Borrow;
  wire C;
  wire Diff;

  Full_Suber Full_Suber_i
       (.A(A),
        .B(B),
        .Borrow(Borrow),
        .C(C),
        .Diff(Diff));
endmodule

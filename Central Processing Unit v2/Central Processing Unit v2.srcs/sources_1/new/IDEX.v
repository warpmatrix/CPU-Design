`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/02 20:29:13
// Design Name: 
// Module Name: IDEX
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module IDEX(
    input clk,
    input Control_WB,
    input [2:0] Control_M,
    input [2:0] Control_EX,
    input [31:0] Read_data1, 
    input [31:0] Read_data2,
    input [31:0] extended_ins,
    input [4:0] IFID_Register_Rs,
    input [4:0] IFID_Register_Rt,
//    input []
    output reg IDEX_WB,
    output reg [2:0] IDEX_M,
    output reg [2:0] IDEX_EX,
    output reg [31:0] IDEX_Read_data1,
    output reg [31:0] IDEX_Read_data2);
    
    initial begin
        IDEX_WB = 0;
        IDEX_M = 0;
        IDEX_EX = 0;
        IDEX_Read_data1 = 0;
        IDEX_Read_data2 = 0;
    end
    always @(posedge clk) begin
        IDEX_WB = Control_WB;
        IDEX_M = Control_M;
        IDEX_EX = Control_EX;
        IDEX_Read_data1 = Read_data1;
        IDEX_Read_data2 = Read_data2;
    end
endmodule

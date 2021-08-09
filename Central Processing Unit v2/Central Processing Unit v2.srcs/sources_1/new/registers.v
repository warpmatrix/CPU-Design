`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/06 21:35:11
// Design Name: 
// Module Name: registers
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


module Registers(
    input clk,
    input RegWrite,
    input [4:0] Read_register1,
    input [4:0] Read_register2,
    input [4:0] Write_register,
    input [31:0] Write_data,
    output [31:0] Read_data1,
    output [31:0] Read_data2
    );
    reg [31:0] registers [31:0];
    integer i;
    
    initial begin
        for (i=0; i<32; i=i+1)
            registers[i] = 0;
        registers[28] = 32'h10008000;
        registers[29] = 32'h7fffeffc;
    end
    
    assign Read_data1 = registers[Read_register1];
    assign Read_data2 = registers[Read_register2];
    always @(posedge clk)
        if (RegWrite) registers[Write_register] = Write_data;
endmodule

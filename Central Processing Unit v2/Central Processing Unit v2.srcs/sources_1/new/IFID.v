`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/02 19:43:37
// Design Name: 
// Module Name: IF_ID
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


module IFID(
    input clk,
    input [31:0] instMem_output, 
    input IFWrite, 
    output reg [31:0] instruction);
    
    initial begin
        instruction = 0; 
    end
    always @(posedge clk) begin
        if (IFWrite) instruction = instMem_output;
    end
endmodule

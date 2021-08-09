`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/27 10:37:54
// Design Name: 
// Module Name: adder_sim
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


module adder_sim;
    wire [31:0] num1 = 4;
    wire [31:0] num2 = 1;
    wire [31:0] sum;
    Adder adder(num1, num2, sum);
endmodule

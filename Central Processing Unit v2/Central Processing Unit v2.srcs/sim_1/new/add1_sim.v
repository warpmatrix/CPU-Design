`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/27 10:49:14
// Design Name: 
// Module Name: add1_sim
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


module add1_sim;
    reg clk = 0;
    wire [31:0] pc;
    wire [31:0] next_pc;
    Adder Add1(pc, 4, next_pc);
    Program_counter PC(clk, next_pc, pc);
    always #10 clk = ~clk;
endmodule

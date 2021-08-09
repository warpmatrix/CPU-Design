`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/06 22:12:15
// Design Name: 
// Module Name: shift_left_2
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


module Shift_left2(
    input [31:0] extended_ins,
    output [31:0] shifted_ins
    );
    assign shifted_ins = extended_ins << 2;
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/06 22:04:13
// Design Name: 
// Module Name: sign-extend
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


module Sign_extend(
    input [15:0] instruction,
    output [31:0] extended_ins
    );
    assign extended_ins = instruction[15:0];
endmodule

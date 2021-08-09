`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/15 12:55:31
// Design Name: 
// Module Name: logic_gates
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


module logic_gates(
    input a,
    input b,
    output [5:0] f
    );
    assign f[5] = a & b;
    assign f[4] = ~(a & b);
    assign f[3] = a | b;
    assign f[2] = ~(a | b);
    assign f[1] = a ^ b;
    assign f[0] = a ~^ b;
endmodule

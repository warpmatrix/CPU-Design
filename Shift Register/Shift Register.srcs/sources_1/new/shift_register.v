`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/21 14:52:03
// Design Name: 
// Module Name: shift_register
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


module shift_register(
    input clk,
    input clr_l,
    input [1:0] s,
    input [3:0] d,
    input lin,
    input rin,
    output reg [3:0] q = 4'b0000
    );
always @(posedge clk or negedge clr_l)
    if (clr_l == 0) q <= 0;
    else 
        case(s)
            0: q <= q;
            1: q <= {rin, q[3:1]};
            2: q <= {q[2:0], lin};
            3: q <= d;
            default: q <= 4'bx;
        endcase
endmodule

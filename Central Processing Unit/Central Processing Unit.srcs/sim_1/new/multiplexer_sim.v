`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/06 20:01:37
// Design Name: 
// Module Name: multiplexer_sim
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


module multiplexer_sim;
    wire [5:0] D0 = 6'b000111;
    wire [5:0] D1 = 6'b111000;
    reg s = 0;
    always #10 s = ~s;
    
    wire [5:0] Y;
    Multiplexer Mux1(D0, D1, s, Y);
    
endmodule

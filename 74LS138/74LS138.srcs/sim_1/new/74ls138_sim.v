`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/21 23:07:55
// Design Name: 
// Module Name: 74ls138_sim
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


module p138_sim;
reg g1 = 0;
reg g2a_l = 0;
reg g2b_l = 0;
reg[2:0] a = 0;
wire[7:0] y_l;
p138 v74x138(g1,g2a_l,g2b_l,a,y_l);
initial begin
    g1 = 0;
    g2a_l = 0;
    g2b_l = 0;
    a = 0;
    #100;
    g1 = 1;
    g2a_l = 0;
    g2b_l = 0;
end
always #100 a = a + 1;
endmodule

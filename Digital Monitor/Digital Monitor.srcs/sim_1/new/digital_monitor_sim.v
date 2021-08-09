`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/22 21:12:57
// Design Name: 
// Module Name: digital_monitor_sim
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


module digital_monitor_sim;
reg clk=0;
wire [7:0] num;
wire [3:0] dig;
reg inc=0, dec=0;
always #10 clk = ~clk;
always #13 inc = ~inc;
digital_monitor uut(clk, inc, dec, num, dig);
endmodule

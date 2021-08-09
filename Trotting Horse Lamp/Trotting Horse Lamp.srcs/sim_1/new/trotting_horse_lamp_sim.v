`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/22 00:15:53
// Design Name: 
// Module Name: trotting_horse_lamp_sim
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


module trotting_horse_lamp_sim;
    reg clk = 0;
    wire [7:0] led;
    always #10 clk = ~clk;
    trotting_horse_lamp uut(clk, led);
endmodule

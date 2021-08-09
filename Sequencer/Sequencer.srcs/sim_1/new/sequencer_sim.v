`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/20 22:33:53
// Design Name: 
// Module Name: sequencer_sim
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

module sequencer_sim();
    reg clk;
    wire led;
    sequencer uut(clk,led);
    initial begin
        clk=0;
    end
    always #5 clk=~clk;
endmodule

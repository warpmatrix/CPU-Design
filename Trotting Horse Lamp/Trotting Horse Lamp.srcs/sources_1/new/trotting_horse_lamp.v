`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/21 23:34:15
// Design Name: 
// Module Name: trotting_horse_lamp
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


module trotting_horse_lamp(input clk, output [7:0] f);
    reg [2:0] num = 0;
    reg [31:0] divclk_cnt = 0;
    reg divclk = 0;
    wire [7:0] y_l;
    
    assign f = ~y_l;
    always @(posedge clk) begin
        if (divclk_cnt == 25000000) begin
            divclk_cnt = 0;
            divclk = ~divclk;
        end
        else divclk_cnt = divclk_cnt + 1'b1; 
    end
    
    always @(posedge divclk) begin
        num = num + 1;
    end
    p138_0 uut_0(.g1(1), .g2a_l(0), .g2b_l(0), .a(num[2:0]), .y_l(y_l));
endmodule

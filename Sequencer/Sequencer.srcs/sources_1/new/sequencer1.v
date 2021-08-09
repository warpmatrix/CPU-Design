`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/21 00:04:17
// Design Name: 
// Module Name: sequencer1
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

module sequencer1(input clk, output led);
reg [31:0] divclk_cnt = 0;
reg divclk=0;
reg q0=0;
reg q1=0;
reg q2=0;
always@(posedge clk) begin
    if(divclk_cnt==25000000) begin
        divclk = ~divclk;
        divclk_cnt = 0;
    end
    else begin
        divclk_cnt = divclk_cnt+1'b1;
    end
end
assign led = ~q1;
always@(posedge divclk) begin
    q2 <= q1&q0;
    q1 <= q1^q0;
    q0 <= ~q0 & ~q2;
end
endmodule

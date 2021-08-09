`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/21 15:05:33
// Design Name: 
// Module Name: shift_register_sim
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


module shift_register_sim;
reg clk = 0;
reg lin = 0;
reg rin = 1;
reg clr_l = 1;
reg [1:0] s = 2'b0;
reg [3:0] d = 4'b0101;
wire [3:0] q;

shift_register uut(clk, clr_l, s, d, lin, rin, q);
always #10 begin
    s = 1+s;
    clk = ~clk;
end
endmodule

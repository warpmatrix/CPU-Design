`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/15 12:57:53
// Design Name: 
// Module Name: logic_gates_sim
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


module logic_gates_sim();
    reg x,y;
    wire [5:0] z;
    logic_gates G2(.a(x), .b(y), .f(z));
    initial begin
        x = 0;
        y = 0;
        #10;
    end
    always begin
        #10 x = 0;
        #20 y = 0;
        #10 x = 1;
        #20 y = 1;
    end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/16 09:25:44
// Design Name: 
// Module Name: logic_gates_sim2
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


module logic_gates_sim2();
    reg x,y;
    wire [5:0] z;
    logic_gates G2(x, y, z);
    initial begin
        x = 0;
        y = 0;
    end
    always #10 {x,y} = {x,y} + 1;
endmodule

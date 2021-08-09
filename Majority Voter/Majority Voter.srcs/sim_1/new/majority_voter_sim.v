`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/16 10:29:33
// Design Name: 
// Module Name: majority_voter_sim
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


module majority_voter_sim;
    reg a, b, c;
    wire f;
    majority_voter voter(a, b, c, f);
    initial begin
        a = 0;
        b = 0;
        c = 0;
    end
    always #10 {a, b, c} = {a, b, c} + 1;
endmodule

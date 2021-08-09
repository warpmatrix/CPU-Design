`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/27 11:31:43
// Design Name: 
// Module Name: instruction_memory
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


module Instruction_memory(
    input [31:0] address,
    output [31:0] instruction
    );
    reg [31:0] memory [128:0];
    
    integer i;
    initial begin
        for (i=0; i<128; i=i+1)
            memory[i] = 0;
        memory[0] = 32'h20080004;
        memory[4] = 32'h8d110000;
        memory[8] = 32'h8d120004;
        memory[12] = 32'h00009820;
        memory[16] = 32'h22310001;
        memory[20] = 32'h12320002;
        memory[24] = 32'h02719820;
        memory[28] = 32'h08000004;
        memory[32] = 32'h02729822;
        memory[36] = 32'had130008;
        memory[40] = 32'h8d130008;
        memory[44] = 32'h0800000a;
    end
    
    assign instruction[31:0] = memory[address];
endmodule

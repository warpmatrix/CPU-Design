`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/06 23:41:18
// Design Name: 
// Module Name: data_memory
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


module Data_memory(
    input clk,
    input [31:0] Address,
    input [31:0] Write_data,
    input MemWrite,
    input MemRead,
    output [31:0] Read_data
    );
    reg [31:0] memory [127:0];
    integer i;
    
    initial begin
        for (i=0; i<128; i=i+1)
            memory[i] = 0;
        memory[4] = 32'h00000006;
        memory[8] = 32'h00000009;
    end
    
    always @(posedge clk)
        if (Write_data) memory[Address] = Write_data;
    assign Read_data = MemRead ? memory[Address] : 32'hzzzzzzzz;
endmodule

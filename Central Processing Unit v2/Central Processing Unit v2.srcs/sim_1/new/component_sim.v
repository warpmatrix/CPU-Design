`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/02 19:56:59
// Design Name: 
// Module Name: component_sim
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


module component_sim;
    reg clk = 0;
    always #10 clk = ~clk;
    
    // test declear    
//    wire[31:0] test, notSingleWire; 

//     IF_ID
//    reg [31:0] instMem_output = 32'h01234567;
//    always #40 instMem_output = ~instMem_output;
//    wire [31:0] instruction;
//    reg IFWrite = 0;
//    always #20 IFWrite = ~IFWrite;
//    IFID IFID(clk, instMem_output, IFWrite, instruction);

    // IDEX
    wire Control_WB;
    reg [2:0] Control_M = 3'b010;
    reg [2:0] Control_EX = 3'b010;
    reg [31:0] Read_data1 = 32'h01234567, Read_data2 = 32'h01234567;
    
endmodule

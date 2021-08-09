`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/27 10:44:32
// Design Name: 
// Module Name: central_processing_unit
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


module Central_Processing_Unit(input clk, output [7:0] pc_output, output [7:0] Write_data_output);
//module Central_Processing_Unit(output [7:0] pc_output, output [7:0] Write_data_output);    
//    reg clk = 0;
//    always #10 clk = ~clk;
//    wire [7:0] pc_output, Write_data_output;
    
    wire [31:0] pc, next_pc;
    wire [31:0] add1_result;
    Adder Add1(pc, 4, add1_result);
    Program_counter PC(clk, next_pc, pc);
    
    wire [31:0] instruction;
    Instruction_memory instruction_memory(pc, instruction);
    
    wire RegDst, Jump, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite;
    wire  [1:0] ALUOp;
    Control Control(instruction[31:26], RegDst, Jump, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite);
    
    wire [4:0] Write_register;
    Multiplexer Mux1(instruction[20:16], instruction[15:11], RegDst, Write_register);
    wire [31:0] Write_data, Read_data1, Read_data2;
    Registers Registers(clk, RegWrite, instruction[25:21], instruction[20:16], Write_register, Write_data, Read_data1, Read_data2);     
    
    wire [31:0] extended_ins;
    Sign_extend Sign_extend(instruction[15:0], extended_ins);
    wire [31:0] shifted_ins;
    Shift_left2 Shift_left2_1(extended_ins, shifted_ins);
    wire [31:0] add2_result;
    Adder Adder2(add1_result, shifted_ins, add2_result);
    
    wire [31:0] operand2;
    Multiplexer Mux2(Read_data2, extended_ins, ALUSrc, operand2);
    wire [3:0] ALUCtrl;
    ALU_control ALU_control(ALUOp, instruction[5:0], ALUCtrl);
    wire Zero;
    wire [31:0] result;
    ALU ALU(Read_data1, operand2, ALUCtrl, result, Zero);
    
    wire [31:0] Read_data;
    Data_memory Data_memory(clk, result, Read_data2, MemWrite, MemRead, Read_data);
    Multiplexer Mux4(result, Read_data, MemtoReg, Write_data);
    
    wire [31:0] Mux3_output;
    Multiplexer Mux3(add1_result, add2_result, Branch&Zero, Mux3_output);
    wire [27:0] Jump_offset;
    Shift_left2 Shift_left2_2(instruction[25:0], Jump_offset);
    wire [31:0] Jump_address = {add1_result[31:28], Jump_offset};
    Multiplexer Mux5(Mux3_output, Jump_address, Jump, next_pc);
    
    assign pc_output = pc[7:0];
    assign Write_data_output = Write_data[7:0];
endmodule

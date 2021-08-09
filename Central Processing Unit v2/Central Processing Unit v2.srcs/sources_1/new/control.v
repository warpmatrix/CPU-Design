`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2019/12/01 20:12:27
// Design Name:
// Module Name: control
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


module Control(
    input [31:26] instruction,
    output reg RegDst,
    output reg Jump,
    output reg Branch,
    output reg MemRead,
    output reg MemtoReg,
    output reg [1:0] ALUOp,
    output reg MemWrite,
    output reg ALUSrc,
    output reg RegWrite
    );
    initial begin
        Branch <= 0;
        Jump <= 0;
    end
    always @(instruction) begin
        case (instruction)
            // add addu sub subu and or nor sll srl slt sltu
            6'b000000: begin 
                RegDst <= 1;
                Jump <= 0;
                Branch <= 0;
                MemRead <= 0;
                MemtoReg <= 0;
                ALUOp <= 2'b10;
                MemWrite <= 0;
                ALUSrc <= 0;
                RegWrite <= 1;
            end
            6'b001000: begin // addi
                RegDst <= 0;
                Jump <= 0;
                Branch <= 0;
                MemRead <= 0;
                MemtoReg <= 0;
                ALUOp <= 2'b00;
                MemWrite <= 0;
                ALUSrc <= 1;
                RegWrite <= 1;
            end
            6'b101011: begin // sw
                RegDst <= 0;
                Jump <= 0;
                Branch <= 0;
                MemRead <= 0;
                MemtoReg <= 0;
                ALUOp <= 2'b00;
                MemWrite <= 1;
                ALUSrc <= 1;
                RegWrite <= 0;
            end
            6'b100011: begin // lw
                RegDst <= 0;
                Jump <= 0;
                Branch <= 0;
                MemRead <= 1;
                MemtoReg <= 1;
                ALUOp <= 2'b00;
                MemWrite <= 0;
                ALUSrc <= 1;
                RegWrite <= 1;
            end
            6'b000100: begin // beq
                RegDst <= 0;
                Jump <= 0;
                Branch <= 1;
                MemRead <= 0;
                MemtoReg <= 0;
                ALUOp <= 2'b01;
                MemWrite <= 0;
                ALUSrc <= 0;
                RegWrite <= 0;
            end
            6'b000010: begin // j
                RegDst <= 1'bx;
                Jump <= 1;
                Branch <= 1'bx;
                MemRead <= 1'bx;
                MemtoReg <= 1'bx;
                ALUOp <= 2'bx;
                MemWrite <= 1'bx;
                ALUSrc <= 1'bx;
                RegWrite <= 1'bx;
            end
        endcase
    end
endmodule

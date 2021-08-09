`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/06 22:42:58
// Design Name: 
// Module Name: ALU_control
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


module ALU_control(
    input [1:0] ALUOp,
    input [5:0] funct,
    output reg [3:0] ALUCtrl
    );
    always @(ALUOp or ALUCtrl) begin
        if (ALUOp == 2'b00) ALUCtrl <= 4'b0010;
        else if (ALUOp == 2'b01) ALUCtrl <= 4'b0110;
        else case (funct)
            6'b100000: // add
                ALUCtrl <= 4'b0010;
            6'b100010: // sub
                ALUCtrl <= 4'b0110;
            6'b100100: // and
                ALUCtrl <= 4'b0000;
            6'b100101: // or
                ALUCtrl <= 4'b0001;
            6'b101010: // slt
                ALUCtrl <= 4'b0111;
        endcase
    end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/06 23:08:21
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [31:0] operand1,
    input [31:0] operand2,
    input [3:0] ALUCtrl,
    output reg [31:0] result,
    output Zero
    );
    always @(operand1 or operand2 or ALUCtrl) begin
        case (ALUCtrl)
            4'b0010:
                result <= operand1 + operand2;
            4'b0110:
                result <= operand1 - operand2;
            4'b0000:
                result <= operand1 & operand2;
            4'b0001:
                result <= operand1 | operand2;
            4'b0111:
                result <= operand1 < operand2;
            4'b1100:
                result <= ~(operand1 | operand2);
        endcase
    end
    assign Zero = result==0;
endmodule

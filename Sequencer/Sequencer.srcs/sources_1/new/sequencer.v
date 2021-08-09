`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/20 18:27:08
// Design Name: 
// Module Name: sequencer
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

module sequencer(clk, led);
input clk;
output led;
parameter state_A=3'b000,state_B=3'b001,
    state_C=3'b010,state_D=3'b011,state_E=3'b100;
reg [31:0] divclk_cnt = 0;
reg divclk = 0;
reg [2:0] state = state_A;
reg led = 0;

always@(posedge clk) begin
    if(divclk_cnt==4) begin //25000000
        divclk = ~divclk;
        divclk_cnt = 0;
    end
    else begin
        divclk_cnt = divclk_cnt + 1'b1;
    end
end

always@(posedge divclk) begin
    case (state)
        state_A: begin
            state<=state_B;
            led<=1;
        end
        state_B: begin
            state<=state_C;
            led<=0;
        end
        state_C: begin
            state<=state_D;
            led<=0;
        end
        state_D: begin
            state<=state_E;
            led<=1;
        end
        state_E: begin
            state<=state_A;
            led<=1;
        end
        default: begin
            state<=state_A;
            led<=1;
        end
    endcase
end
endmodule
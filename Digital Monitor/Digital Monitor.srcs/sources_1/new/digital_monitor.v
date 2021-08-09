`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/22 20:19:54
// Design Name: 
// Module Name: digital_monitor
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


module digital_monitor(
    input clk,
    input inc,
    input dec,
    output reg [7:0] lednum,
    output reg [3:0] leddig = 4'b1111
    );
    
    
    reg [14:0] divclk_cnt = 0;
    reg divclk = 0;
    always @(posedge clk) begin
        if (divclk_cnt == 25000) begin //25000
            divclk = ~divclk;
            divclk_cnt = 0;
        end
        else divclk_cnt = divclk_cnt + 1'b1;
    end
    
    
    reg increg1 = 0;
    reg increg2 = 0;
    reg decreg1 = 0;
    reg decreg2 = 0;
    reg [4:0] cnt = 0;
    always @(posedge divclk) begin
        if (cnt == 20) begin
            increg1 <= inc; 
            decreg1 <= dec;
        end
        else cnt = cnt + 1'b1;
    end
    always @(posedge divclk) begin
        increg2 <= increg1;
        decreg2 <= decreg1;
    end
    
    reg [3:0] num = 4;
    wire inc_ctrl = increg1 && ~increg2;
    wire dec_ctrl = decreg1 && ~decreg2;
    always @(posedge divclk) begin
        if (inc_ctrl) begin
            if (num == 9) num = 0;
            else num = num + 1;
        end
        else if (dec_ctrl) begin
            if (num == 0) num = 9;
            else num = num - 1;
        end
    end
    
    
    reg [7:0] D [9:0];
    initial begin
        D[0]=~8'b11111100; D[1]=~8'b00001100; D[2]=~8'b11011010; D[3]=~8'b11110010; D[4]=~8'b01100110;
        D[5]=~8'b10110110; D[6]=~8'b10111110; D[7]=~8'b11100000; D[8]=~8'b11111110; D[9]=~8'b11110110;
    end
        
    initial lednum = D[8];
    always @(posedge divclk) begin
        case(leddig)
            4'b1110: begin
                leddig <= 4'b0111;
                lednum <= D[1];
            end
            4'b0111: begin
                leddig <= 4'b1011;
                lednum <= D[2];
            end
            4'b1011: begin
                leddig <= 4'b1101;
                lednum <= D[3];
            end
            4'b1101: begin
                leddig <= 4'b1110;
                lednum <= D[num];
            end
            default: begin
                leddig <= 4'b0111;
                lednum <= D[1];
            end
        endcase
    end
endmodule

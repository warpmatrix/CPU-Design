`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/07 13:34:19
// Design Name: 
// Module Name: CPU_Test
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


//module CPU_Test(input clk, output [7:0] pc_output, output [7:0] Write_data_output);
module CPU_Test;
    reg clk = 0;
    always #10 clk = ~clk;
    wire [7:0] pc_output, Write_data_output;
    
    reg[31:0] divclk_cnt = 0;
    reg divclk=0;
    Central_Processing_Unit CPU(divclk, pc_output, Write_data_output);
    always@(posedge clk) begin
        if(divclk_cnt==25000000) begin
            divclk =~ divclk;
            divclk_cnt = 0;
        end
        else divclk_cnt = divclk_cnt+1'b1;
    end
endmodule

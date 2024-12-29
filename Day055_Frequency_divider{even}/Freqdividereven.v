`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 09:30:37
// Design Name: 
// Module Name: Freqdividereven
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


module Freqdividereven(
input clk,
input rstN,
output reg out_clk
    );
    reg[1:0]cnt;
    wire clk_;
    assign clk_=~clk;
    always@(posedge clk)begin
    if(rstN)cnt<=2'd0;
    else if(cnt==2'd1) cnt<=2'd0;
    else cnt<= cnt+1'b1;
    end
always@(posedge clk)begin
if(rstN) out_clk<=0;
else if(cnt==2'd1)out_clk<=0;
else out_clk<=0;
end
endmodule



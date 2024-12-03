`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2024 09:55:14
// Design Name: 
// Module Name: N-bit Johnson Counter
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


module  johnson_ctr #(parameter N=4) 
 (
input clk, reset,
    output reg [3:0] counter);

always@(posedge clk)
    begin
        if(reset) 
            counter <= 0; 
        else 
            counter <= {~counter[0], counter[N-1:1]};  
    end 
endmodule

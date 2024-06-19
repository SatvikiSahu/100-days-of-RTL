`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2024 13:36:21
// Design Name: 
// Module Name: Comparator
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
//Day19: Implementation of a N-bit Comparator using verilog
            
//verilog code

module Comparator(a,b,Ls,Gr,Eq);
    parameter N=8;
    input [N-1:0]a,b;
    output reg Ls,Gr,Eq;
    reg Le=0,Gr=0,Eq=0;
    always@(*) begin
        if(a<b)
            begin
                Ls=1'b1;Eq=1'b0;Gr=1'b0;
            end
        else if (a>b)
            begin
                Ls=1'b0;Eq=1'b0;Gr=1'b1;
            end
        else
            begin
                Ls=1'b0;Eq=1'b1;Gr=1'b0;
            end
    end
endmodule
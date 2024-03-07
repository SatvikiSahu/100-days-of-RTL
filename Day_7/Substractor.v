`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 17:19:34
// Design Name: 
// Module Name: Substractor
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


module Substractor(
input A,B,C, 
output reg D,Brw
    );
    always @(*)
    begin
    D = A ^ B ^C;
    Brw = (~ A) &(B^C) | B&C; 

    end
endmodule

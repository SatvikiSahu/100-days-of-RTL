`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 00:14:03
// Design Name: 
// Module Name: grey to binary
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
module gray2binary(
    input [3:0] gray_in,
    output [3:0] binary_out
    );
    
    buf buf1(binary_out[3],gray_in[3]);
    
    xor xor1(binary_out[2],gray_in[2],binary_out[3]),
        xor2(binary_out[1],gray_in[1],binary_out[2]),
        xor3(binary_out[0],gray_in[0],binary_out[1]);
    
endmodule

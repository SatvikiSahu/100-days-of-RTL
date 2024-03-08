`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2024 21:05:15
// Design Name: 
// Module Name: four_bit_adder
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

//Day7
//Four bit adder 

module full_adder(
    input a,b,cin,
    output reg S,C
    );
    
 always@(*) begin

S= a ^ b ^ cin;               //sum=a xor (b xor c);
C=(a&b) | cin&(a ^ b);   //carry=(a&b) + (a xor b);

end
endmodule

module four_bit_adder(
    input [3:0] A,B,
    input cin,
    output [3:0]S,
    output carry
    );

    wire c1,c2,c3;

    full_adder fa0 (A[0],B[0],cin,S[0],c1);
    full_adder fa1 (A[1],B[1],c1,S[1],c2);
    full_adder fa2 (A[2],B[2],c2,S[2],c3);
    full_adder fa3 (A[3],B[3],c3,S[3],carry);


endmodule
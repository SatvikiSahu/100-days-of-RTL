`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 23:05:20
// Design Name: 
// Module Name: Adder_4bit
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


module adder_four_bit(
output [3:0]sum, 
output cout , 
input [3:0]a,b);

wire c1,c2,c3,c4;

full_3 ad0( .a(a[0]), .b(b[0]),.cin(0), .s(sum[0]), .cout(c1));
full_3 ad1( .a(a[1]), .b(b[1]),.cin(c1), .s(sum[1]), .cout(c2));
full_3 ad2( .a(a[2]), .b(b[2]),.cin(c2), .s(sum[2]), .cout(c3));
full_3 ad3( .a(a[3]), .b(b[3]),.cin(c3), .s(sum[3]), .cout(c4));
assign cout= c4;
endmodule

module full_3(a,b,cin,s,cout);
input a,b,cin;
output s, cout;
assign s=a^b^cin;
assign cout = (a&b) | (b&cin) | (cin&a);
endmodule
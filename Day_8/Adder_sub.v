`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2024 20:46:46
// Design Name: 
// Module Name: Adder_sub
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


module fadder (A, B, Cin, Sum, Cout);
    input A, B;
    input Cin;
    output Sum;
    output Cout;
    wire t1,t2,t3,t4;
  xor x1(t1,A,B);
  xor x2(Sum,t1,Cin);
  and g1(t2,A,B);
  and g2(t3,B,Cin);
  and g3(t4,Cin,A);
  or  g4(Cout,t2,t3,t4);  
endmodule


module add_sub_4 (A, B, In, Res, Out);
    input [3:0] A, B;
    input In;
    output [3:0] Res;
    output Out;
    wire t1,t2,t3,t4,t5,t6,t7;


          xor x3(t3,B[0],In);
          xor x4(t4,B[1],In);
          xor x5(t5,B[2],In);
          xor x6(t6,B[3],In);
          fadder f5(A[0],t3,In,Res[0],t1);
          fadder f6(A[1],t4,t1,Res[1],t2);
          fadder f7(A[2],t5,t2,Res[2],t3);
          fadder f8(A[3],t6,t3,Res[3],Out);  
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module carry_skip_adder(    
    input [3:0]a, b,
    input cin,
    output logic [3:0]sum, 
    output logic cout
    );
    logic c, s;
    logic [3:0]p;

    four_bit_adder fa(a, b, cin, sum, c);

    xor (p[0], a[0], b[0]),
        (p[1], a[1], b[1]),
        (p[2], a[2], b[2]),
        (p[3], a[3], b[3]);
        
    and (s, p[0],p[1], p[2], p[3]);

    assign cout = s ? cin : c;
endmodule


module four_bit_adder(
    input [3:0] A,B,
    input cin,
    output [3:0]S,
    output carry
    );

    logic c1,c2,c3;
    full_adder fa0 (A[0],B[0],cin,S[0],c1);
    full_adder fa1 (A[1],B[1],c1,S[1],c2);
    full_adder fa2 (A[2],B[2],c2,S[2],c3);
    full_adder fa3 (A[3],B[3],c3,S[3],carry);
endmodule

module full_adder(
    input a,b,cin,
    output logic S,C
    );
    
 always@(*) begin
S= a ^ b ^ cin;            
C=(a&b) | cin&(a ^ b);   
end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2024 14:38:18
// Design Name: 
// Module Name: CLA_ADDER
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

//Day17: Implementation of  Carry Look Ahead Adder and
            //its Testbench code using System verilog
//systemverilog code

module CLA_ADDER(
    input logic [3:0] x, y,
    output logic [4:0] s 
    );
supply0 cin;
        
logic [4:1]c;
logic [3:0] p;
logic [3:0] g;

assign p[0]=x[0]^y[0];
assign p[1]=x[1]^y[1];
assign p[2]=x[2]^y[2];
assign p[3]=x[3]^y[3];

assign g[0]=x[0]&y[0];
assign g[1]=x[1]&y[1];
assign g[2]=x[2]&y[2];
assign g[3]=x[3]&y[3];

assign c[1]=g[0] | (p[0]&cin);
assign c[2]=g[1] | (p[1]&g[0]) | (p[0]&p[1]&cin);
assign c[3]=g[2] | (p[2]&g[1]) | (p[2]&p[1]&g[0]) | (p[2]&p[1]&p[0]&cin);
assign c[4]=g[3] | (p[3]&g[2]) | (p[3]&p[2]&g[1]) | (p[3]&p[2]&p[1]&g[0]) | (p[3]&p[2]&p[1]&p[0]&cin);

assign s[0]=p[0]^cin;
assign s[1]=p[1]^c[1];
assign s[2]=p[2]^c[2];
assign s[3]=p[3]^c[3];

assign s[4]=c[4]; 

endmodule
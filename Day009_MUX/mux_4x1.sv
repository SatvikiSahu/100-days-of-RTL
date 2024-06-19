`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 16:59:49
// Design Name: 
// Module Name: mux_4x1
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

module mux_4X1(input logic [3:0]d, input logic [1:0]s, output logic f);
    
    logic w0, w1;
    
    mux_2x1 M0(d[0],d[1],s[0],w0);
    mux_2x1 M1(d[2],d[3],s[0],w1);
    
    mux_2x1 M2(w0,w1,s[1],f);
    
endmodule

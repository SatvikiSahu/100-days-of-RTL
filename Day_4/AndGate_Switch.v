`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2024 20:09:26
// Design Name: 
// Module Name: AndGate_Switch
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


module AndGate_Switch(    
    input a,b,
    output out 
    );
    supply0 gnd;
    supply1 vdd;
    wire w1,w2;
    
    pmos p1(w1,vdd,a);
    pmos p2(w1,vdd,b);
    nmos n1(w1,w2,a);
    nmos n2(w2,gnd,b);
    
    pmos p3(out,vdd,w1);
    nmos n3(out,gnd,w1);
    
endmodule

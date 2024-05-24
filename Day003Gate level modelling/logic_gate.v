`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2024 21:24:32
// Design Name: 
// Module Name: Logic_gates__Gatelevel
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


module Logic_gates__Gatelevel(
    input a, b,
    output and_g, or_g, not_g, nand_g, nor_g, xor_g, xnor_g
    );
    
    and andgate(and_g, a, b);
    or orgate(or_g, a, b);
    not notgate(not_g, a);
    nand nandgate(nand_g, a, b);
    nor norgate(nor_g, a, b);
    xor xorgate(xor_g, a, b);
    xnor xnorgate(xnor_g, a, b);
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2024 22:04:54
// Design Name: 
// Module Name: Logic_gates__structural
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


module Logic_gates__structural(
    input a, b,
    output and_g, or_g, not_g, nand_g, nor_g, xor_g, xnor_g
    );
    assign and_g = a&b;
    assign or_g = a|b;
    assign not_g = ~a;
    assign nand_g = ~(a&b);
    assign nor_g = ~(a|b);
    assign xor_g = a^b;
    assign xnor_g = ~(a^b);
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2024 12:27:22
// Design Name: 
// Module Name: Logic_gates_behavioural
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


module Logic_gates_behavioural(
    input a, b,
    output reg and_g,
    output reg or_g,
    output reg not_g,
    output reg nand_g,
    output reg nor_g,
    output reg xor_g,
    output reg xnor_g
    );
    always@(*)
        begin
            and_g = a&b;
            or_g = a|b;
            not_g = ~a;
            nand_g = ~(a&b);
            nor_g = ~(a|b);
            xor_g = a^b;
            xnor_g = ~(a^b);
        end
    
endmodule

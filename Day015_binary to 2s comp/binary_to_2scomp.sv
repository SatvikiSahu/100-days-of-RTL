`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2024 23:11:29
// Design Name: 
// Module Name: binary_to_2scomp
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


//////////////////////////////////////////////////////////////////////////////////
//Day15: Implementation of Binary code to 2's complement converter  and 
            //its Testbench code using System verilog
            
//verilog code

module binary_to_2scomp (
    input [2:0] binary_in,
    output [2:0] twos_comp_out
);
    assign twos_comp_out = ~binary_in + 1'b1;
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2024 19:18:57
// Design Name: 
// Module Name: binary2excess3
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


//Day14: Implementation of Binary code to Excess-3 Code converter  and 
            //its Testbench code using System verilog
            
//verilog code

module binary2excess3(
    input logic [3:0] binary_in,
    output logic [3:0] excess3_out
    );
    always@(binary_in)
    begin
        case(binary_in)
            4'b0000 : excess3_out = 4'b0011;
            4'b0001 : excess3_out = 4'b0100;
            4'b0010 : excess3_out = 4'b0101;
            4'b0011 : excess3_out = 4'b0110;
            4'b0100 : excess3_out = 4'b0111;
            4'b0101 : excess3_out = 4'b1000;
            4'b0110 : excess3_out = 4'b1001;
            4'b0111 : excess3_out = 4'b1010;
            4'b1000 : excess3_out = 4'b1011;
            4'b1001 : excess3_out = 4'b1100;
            default : excess3_out = 4'bxxxx;
        endcase
    end
endmodule
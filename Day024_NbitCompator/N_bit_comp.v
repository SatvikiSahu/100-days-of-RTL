`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2024 21:08:59
// Design Name: 
// Module Name: N_bit_comp
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

module N_bit_comparator(a,b,Lesser,Greater,Equal);
    parameter N=8;
    input [N-1:0]a,b;
    output Lesser,Greater,Equal;
    reg Lesser=0,Greater=0,Equal=0;
    always@(*) begin
        if(a<b)
            begin
                Lesser=1'b1;
                Equal=1'b0;
                Greater=1'b0;
            end
        else if (a>b)
            begin
                Lesser=1'b0;
                Equal=1'b0;    
                Greater=1'b1;
            end
        else
            begin
                Lesser=1'b0;
                Equal=1'b1;
                Greater=1'b0;
            end
    end
endmodule
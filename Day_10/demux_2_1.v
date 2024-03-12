`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2024 08:08:33
// Design Name: 
// Module Name: demux_2_1
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


module dmux_1by2(
    input S, 
    input A, 
    output logic f0,f1
    );
    assign {f0, f1} = S ? {1'b0, A} : {A, 1'b0};
endmodule

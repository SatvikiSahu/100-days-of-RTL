`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2024 08:09:38
// Design Name: 
// Module Name: demux_1_4
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


module dmux_1by4(
    input [1:0]S, 
    input A, 
    output logic y0, y1, y2, y3
    );
    logic z1, z2;
    dmux_1by2 d1(S[0], A, z1, z2);
    dmux_1by2 d2(S[1], z1, y0, y1);
    dmux_1by2 d3(S[1], z2, y2, y3);
endmodule

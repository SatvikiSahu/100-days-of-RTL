`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2024 08:05:39
// Design Name: 
// Module Name: demux_4x1
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



module demux_1_4(
  input sel0, sel1,
  input  i,
  output reg y0, y1, y2, y3);
  
  wire z1,z2;
  
  demux_2_1 d1(sel0, i, z1, z2);
  demux_2_1 d2(sel1, z1, y0, y1);
  demux_2_1 d3(sel1, z2, y2, y3);
endmodule
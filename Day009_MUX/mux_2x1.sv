`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 16:56:15
// Design Name: 
// Module Name: mux_2x1
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


module mux_2x1( 
            input logic d0,d1,s ,
            output logic f
    );  
    
    logic p0,p1; 
    
    assign f= p0|p1;
    assign p0 = d0 & ~s;
    assign p1 = d1 & s;
      
    
endmodule
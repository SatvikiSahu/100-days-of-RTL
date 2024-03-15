`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 08:51:10
// Design Name: 
// Module Name: BCD_7segment
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
module BCD_7segment(
     input logic [3:0]din,
     output logic a,b,c,d,e,f,g );
      
always@(*)
begin
case(din)
    4'd0:begin a=1;b=1;c=1;d=1;e=1;f=1;g=0;end
    4'd1:begin a=0;b=1;c=1;d=0;e=0;f=0;g=0;end
    4'd2:begin a=1;b=1;c=0;d=1;e=1;f=0;g=1;end
    4'd3:begin a=1;b=1;c=1;d=1;e=0;f=0;g=1;end
    4'd4:begin a=0;b=1;c=1;d=0;e=0;f=1;g=1;end
    4'd5:begin a=1;b=0;c=1;d=1;e=0;f=1;g=1;end
    4'd6:begin a=1;b=0;c=1;d=1;e=1;f=1;g=1;end
    4'd7:begin a=1;b=1;c=1;d=0;e=0;f=0;g=0;end
    4'd8:begin a=1;b=1;c=1;d=1;e=1;f=1;g=1;end
    4'd9:begin a=1;b=1;c=1;d=1;e=0;f=1;g=1;end
    default:begin a=0;b=0;c=0;d=0;e=0;f=0;g=0;end
endcase
end
endmodule
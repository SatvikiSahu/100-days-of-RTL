`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Day6
//Half Subtractor Implementation

module half_subtractor(
    input a,b,
    output reg diff,brw
    );
always@(*) begin

diff=a^b;
brw= ~ a &b; 

end
endmodule
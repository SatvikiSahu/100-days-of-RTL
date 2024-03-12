`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module Encoder_8by3(
    input[7:0]d,
    output logic[2:0]out
    );
always@(d)
begin
	if(d[7]==1)  
	    out=3'b111;
	else if(d[6]==1)
		out=3'b110;
	else if(d[5]==1)
	    out=3'b101;
	else if(d[4]==1)
		out=3'b100;
	else if(d[3]==1)
		out=3'b011;
	else if(d[2]==1)
		out=3'b010;
	else if(d[1]==1)
		out=3'b001;
    else 
		out=3'b000;
	end
endmodule

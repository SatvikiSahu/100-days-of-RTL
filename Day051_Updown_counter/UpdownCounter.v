`timescale 1ns / 1ps

module up_down_counter
  # (parameter N = 4)
  
  ( input clk, reset, upordown, output reg[N-1:0] count);
 
  always @ (posedge clk )
  begin
    if (reset==1)
     count <= 0;
    
	else if(upordown==1)     

         if (count == 2*N -1) 
            count <= 0;
         
	   else
            count<=count+1;  
		
	else                     

	     if(count==0)
	       count<= 2*N -1;

	     else
	       count<=count-1;    

  end
endmodule
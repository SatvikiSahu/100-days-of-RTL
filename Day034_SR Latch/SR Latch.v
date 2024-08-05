`timescale 1ns / 1ps

module SR_latch(
    input en, rst, S, R, 
    output reg Q
    ); 
    
    always@(*)
        begin 
            if(rst) Q<= 1'b0;
            else if(en) begin
                case({S,R})
                    2'b00 : Q<= Q;
                    2'b01 : Q<= 1'b0;
                    2'b10 : Q<= 1'b1;
                    default : Q<=2'bxx;
                endcase
                end    
        end
endmodule
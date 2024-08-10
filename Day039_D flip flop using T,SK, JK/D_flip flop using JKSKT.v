`timescale 1ns / 1ps

module D_using_SR_JK_T(
    input clk, reset, D,
    output Q_sr, Q_jk, Q_t
    );
    wire w;
    
    SR_flipflop SR(clk, reset, D, ~D, Q_sr);
    
    JK_flipflop JK(D, ~D, clk, reset, Q_jk);

    assign w= D ^ Q_t;
    T_flipflop T(w, clk, reset, Q_t);
    
endmodule
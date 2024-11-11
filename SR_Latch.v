`timescale 1ns / 1ps

module SR_Latch(
    input S,
    input R,
    output Q, 
    output Qbar
    );
    
    nor #1 N1(Q,R,Qbar);
    nor #1 N2(Qbar,S,Q);
endmodule

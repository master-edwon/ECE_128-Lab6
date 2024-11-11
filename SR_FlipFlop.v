`timescale 1ns / 1ps

module SR_FlipFlop(
    input S,
    input R,
    input clk,
    output reg Q,
    output reg Qbar
    );
    
    always @ (posedge clk)
    begin
        if(S && !R)
            begin
                Q <= 1;
                Qbar <= 0;
            end
        else if(!S && R)
            begin
                Q <= 0;
                Qbar <= 1;
            end
        else if (!S && !R)
            begin
                Q <= Q;
                Qbar <= Qbar;
            end
        else
            begin
                Q <= 1'bx;
                Qbar <= 1'bx;
            end
    end
endmodule

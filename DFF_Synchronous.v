`timescale 1ns / 1ps

module DFF_Synchronous(
    input d,
    input rstn,
    input clk,
    output reg q
    );
    
    always @ (posedge clk)
    if(!rstn)
        q <= 0;
    else
        q <= d;
endmodule

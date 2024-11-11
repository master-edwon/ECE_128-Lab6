`timescale 1ns / 1ps

module T_FlipFlop_tb;

    // Declare inputs as reg type
    reg clk;

    // Declare outputs as wire type
    wire Q1, Q2, Q3;

    // Instantiate the Counters module
    Counters uut (
        .clk(clk),
        .Q1(Q1),
        .Q2(Q2),
        .Q3(Q3)
    );

   
    always begin
        #5 clk = ~clk; 
    end

    initial begin
        clk = 0;
        #100;  
        
        #10 $stop;
    end

endmodule

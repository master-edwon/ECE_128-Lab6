`timescale 1ns / 1ps

module DFF_Asynchronous_tb;

    reg clk;
    reg d;
    reg rstn;
    reg [2:0] delay;
    wire q;
    
    DFF_Asynchronous uut1(d,rstn,clk,q);
    
    always #10 clk = ~clk;
    
    initial begin
        clk <= 0;
        d <= 0;
        rstn <= 0;
        delay = $random;
        #15 d <= 1;
        #10 rstn <= 1;
        @ (negedge clk)
            rstn <= 0;
        @ (posedge clk)
            rstn <= 1;     
            begin
            delay = $random;
            #(delay) d <= 0;
            delay = $random;
            @ (negedge clk)
            rstn <= 0;
            #(delay) d <= 1;
            delay = $random;
            @ (posedge clk)
            rstn <= 1;  
            #(delay) d <= 2;
            delay = $random;
            #(delay) d <= 3;
            delay = $random;
            #(delay) d <= 4;
            delay = $random;
            #(delay) d <= 1;
            delay = $random;
            #(delay) d <= 2;
            end
    end
endmodule


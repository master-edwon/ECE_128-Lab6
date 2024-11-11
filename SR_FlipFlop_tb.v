`timescale 1ns / 1ps

module SR_FlipFlop_tb();

reg S,R, clk;
wire Q, QBar;

SR_FlipFlop uut1(S,R,clk,Q,Qbar); // instantiation by port name.

// apply test vectors
initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 
initial begin 
 S= 1; R= 0;
 #100; S= 0; R= 1; 
 #100; S= 0; R= 0; 
 #100;  S= 1; R=1; 
end 
endmodule

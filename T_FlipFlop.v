`timescale 1ns / 1ps

module T_FlipFlop (clk,t, q);

input clk;
input t;
output reg q=1'b0;  
    always @ (posedge clk) begin
        if (t)  
            q <= ~q;  
        else  
            q <= q;  
  end  
endmodule 
 
module Counters(clk,Q1,Q2,Q3);
   input clk;
   output Q1;
   output Q2;
   output Q3;
  wire tt2;
  wire tt3;
    T_FlipFlop num_1(.clk(clk),.t(1'b1),.q(Q1));
    assign tt2 = ~Q1;
    T_FlipFlop num_2(.clk(clk),.t(tt2),.q(Q2));
    assign tt3 = ~Q1&(~Q2);
    T_FlipFlop num_3(.clk(clk),.t(tt3),.q(Q3)); 
    
 endmodule

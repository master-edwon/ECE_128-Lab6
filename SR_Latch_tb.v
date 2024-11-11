`default_nettype none
`timescale 1ns / 1ps

module SR_Latch_tb();
reg R;
reg S;
wire Q;
wire Qbar;

SR_Latch uut1(S,R,Q,Qbar);
initial begin
    R=0;S=0;
    #5 S=1;
    #5 S=0;
    #5 R=1;
    #5 R=0; S=1;
    #5 R=1; S=0;
    #5 R=0;
    #5 R=1; S=1;
    end
    
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    end
endmodule

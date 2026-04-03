// Design code for 2:1 multiplexer 
module mux2to1 (
    input I0,
    input I1,
    input S,
    output Y
);
assign Y = S ? I1 : I0;
endmodule

// TB
`timescale 1ns/1ps
module mux_tb;
reg I0, I1, S;
wire Y;
mux2to1 uut (
    .I0(I0),
    .I1(I1),
    .S(S),
    .Y(Y)
);

initial begin
    $monitor("Time=%0t | I0=%b I1=%b S=%b -> Y=%b", $time, I0, I1, S, Y);
    I0=0; I1=0; S=0; #10;
    I0=0; I1=1; S=0; #10;
    I0=1; I1=0; S=1; #10;
    I0=1; I1=1; S=1; #10;

    I0=0; I1=1; S=1; #10;
    I0=1; I1=0; S=0; #10;

    $finish;
end
endmodule

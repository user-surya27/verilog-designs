// Or gate Design code
module or_gate (
    input a,
    input b,
    output y
);
assign y = a | b;
endmodule

// TB code
module or_gate_tb;
reg a, b;
wire y;
or_gate uut (
    .a(a),
    .b(b),
    .y(y)
);
initial begin
    $display("a b | y");
    $monitor("%b %b | %b", a, b, y);
    a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
    #10 $finish;
end
endmodule

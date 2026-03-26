// And Gate Design Code
module and_gate (
    input a,
    input b,
    output y
);
assign y = a & b;
endmodule

// TB Code
module and_gate_tb;
reg a, b;
wire y;
and_gate uut (
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

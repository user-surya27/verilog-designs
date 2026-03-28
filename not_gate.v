// Design code for not gate
module not_gate (
    input a,
    output y
);
assign y = ~a;
endmodule

// TB
module not_gate_tb;
reg a;
wire y;
not_gate uut (
    .a(a),
    .y(y)
);
initial begin
    $display("a | y");
    $monitor("%b | %b", a, y);
    a = 0;
    #10 a = 1;
    #10 $finish;
end
endmodule

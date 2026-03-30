// Design code for nand gate
module nand_gate(
    input a,
    input b,
    output y
);
    assign y = ~(a & b);
endmodule

// TB
module nand_gate_tb;
    reg a;
    reg b;
    wire y;
    nand_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );
    initial begin
        $monitor("Time=%0t | a=%b b=%b | y=%b", $time, a, b, y);
        $dumpfile("dump.vcd"); $dumpvars;
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end
endmodule

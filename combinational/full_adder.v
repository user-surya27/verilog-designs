// Design code for Full Adder 
module full_adder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
);
    assign Sum = A ^ B ^ Cin;
    assign Cout = (A & B) | (Cin & (A ^ B));
endmodule

// TB
module full_adder_tb;
    reg a, b, cin;
    wire sum, cout;
    full_adder dut (
        .A(a),
        .B(b),
        .Cin(cin),
        .Sum(sum),
        .Cout(cout)
    );

    // 3. Provide Stimulus
    initial begin
        // Monitor outputs in the console
        $monitor("Time=%0t | A=%b B=%b Cin=%b | Sum=%b Cout=%b", $time, a, b, cin, sum, cout);

        // Exhaustive testing of all 8 combinations
        a = 0; b = 0; cin = 0; #10;
        a = 0; b = 0; cin = 1; #10;
        a = 0; b = 1; cin = 0; #10;
        a = 0; b = 1; cin = 1; #10;
        a = 1; b = 0; cin = 0; #10;
        a = 1; b = 0; cin = 1; #10;
        a = 1; b = 1; cin = 0; #10;
        a = 1; b = 1; cin = 1; #10;

        $finish; // End simulation
    end
endmodule

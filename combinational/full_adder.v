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
    initial begin
        $monitor("Time=%0t | A=%b B=%b Cin=%b | Sum=%b Cout=%b", $time, a, b, cin, sum, cout);
        a = 0; b = 0; cin = 0; #10;
        a = 0; b = 0; cin = 1; #10;
        a = 0; b = 1; cin = 0; #10;
        a = 0; b = 1; cin = 1; #10;
        a = 1; b = 0; cin = 0; #10;
        a = 1; b = 0; cin = 1; #10;
        a = 1; b = 1; cin = 0; #10;
        a = 1; b = 1; cin = 1; #10;
        $finish; 
    end
endmodule

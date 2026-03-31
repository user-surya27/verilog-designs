// Design code for XNOR gate
module xnor_gate(
    input A,
    input B,
    output Y
);
    assign Y = ~(A ^ B); 
endmodule

// TB
module xnor_tb;
    reg A;
    reg B;
    wire Y;
    xnor_gate uut (
        .A(A), 
        .B(B), 
        .Y(Y)
    );
    initial begin
        $monitor("Time=%0d | A=%b B=%b | Y=%b", $time, A, B, Y);
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10; 
        $finish;
    end
endmodule

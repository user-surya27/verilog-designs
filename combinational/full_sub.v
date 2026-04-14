// Design code for Full Subtractor 
module full_subtractor(
    input A,
    input B,
    input Bin,
    output Diff,
    output Bout
);
    assign Diff = A ^ B ^ Bin;
    assign Bout = (~A & B) | (~(A ^ B) & Bin); 
endmodule


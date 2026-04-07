// a->I1, b->I2, y->O1, ^->XOR Operator
// Design code for XOR Gate
module xorgate(a,b,y);
  input a,b;
  output y;
  assign y=a^b;
endmodule


// TB
module xortb;
  reg a,b;
  wire y;
  xorgate dut(a,b,y);
  initial begin
    a=0;b=0;
    #1 a=0;b=1;
    #1 a=1;b=0;
    #1 a=1;b=1;
  end 
endmodule

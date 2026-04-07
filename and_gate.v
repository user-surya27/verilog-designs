// a->I1, b->I2, y->O1, &->AND Operator
// Design code for AND Gate
module andgate(a,b,y);
  input a,b;
  output y;
  assign y=a&b;
endmodule

// TB 
module andtb;
wire y;
reg a,b;
  andgate dut(a,b,y);
  initial begin
   a=0;b=0;
    #1 a=0;b=1;
    #1 a=1;b=0;
    #1 a=1;b=1;
  end
endmodule

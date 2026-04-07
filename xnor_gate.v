// Design code for XNOR Gate
module xnorgate(a,b,y);
  input a,b;
  output y;
  assign y=~(a^b);
endmodule

// TB
module xnortb;
  reg a,b;
  wire y;
  xnorgate dut(a,b,y);
  initial begin
    a=0;b=0;
    #1 a=0;b=1;
    #1 a=1;b=0;
    #1 a=1;b=1;
  end 
endmodule

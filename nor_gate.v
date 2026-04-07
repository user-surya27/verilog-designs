// Design code for Nor Gate
module norgate(a,b,y);
  input a,b;
  output y;
  assign y=~(a|b);
endmodule

// TB
module nortb;
  reg a,b;
  wire y;
  norgate dut(a,b,y);
  initial begin
    a=0;b=0;
    #1 a=0;b=1;
    #1 a=1;b=0;
	#1 a=1;b=1;
  end
endmodule

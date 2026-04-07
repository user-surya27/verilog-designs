// Design  code for OR Gate
module orgate(a,b,y);
  input a,b;
  output y;
  assign y=a|b;
endmodule

// TB 
module ortb;
wire y;
reg a,b;
  orgate dut(a,b,y);
  initial begin
    a=0;b=0;
    #1 a=0;b=1;
    #1 a=1;b=0;
    #1 a=1;b=1;
  end
endmodule

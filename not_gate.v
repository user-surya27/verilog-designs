// a->I1, y->O1, ~->NOT Operator
// Design code for NOT Gate
module notgate(a,y);
  input a;
  output y;
  assign y=~a;
endmodule;

// TB
module nottb;
wire y;
reg a;
  notgate dut(a,y);
  initial begin
    a=0;
    #1 a=1;
    #1 a=0;
  end
endmodule

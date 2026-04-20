// Design code for 4 Bit Binary Counter
module counter_4bit (
    input clk,     
    input reset,   
    output reg [3:0] out 
);
always @(posedge clk) begin
    if (reset) begin
        out <= 4'b0000; 
    end else begin
        out <= out + 1;
    end
end
endmodule

// TB
module counter_4bit_tb;
    reg clk;
    reg reset;
    wire [3:0] out;
    counter_4bit uut (
        .clk(clk),
        .reset(reset),
        .out(out)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        reset = 1;
        #20 reset = 0;
        #200;
        reset = 1;
        #20 reset = 0;
        #50 $finish;
    end
endmodule

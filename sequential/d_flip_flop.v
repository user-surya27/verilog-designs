// Design code for D Flip Flop
module d_ff (
    input clk,     
    input rst_n,  
    input d,      
    output reg q  
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            q <= 1'b0; 
        end else begin
            q <= d;   
        end
    end
endmodule

// TB
module d_ff_tb;
    reg clk;
    reg rst_n;
    reg d;
    wire q;
    d_ff uut (
        .clk(clk),
        .rst_n(rst_n),
        .d(d),
        .q(q)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        rst_n = 0; 
        d = 0;
        #20 rst_n = 1;
        #10 d = 1; 
        #10 d = 0; 
        #20 d = 1;
        #15 rst_n = 0; 
        #10 rst_n = 1;
        #50 $finish; 
    end
endmodule

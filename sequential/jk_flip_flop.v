// Design code for JK Flip Flop
module jk_ff (
    input clk,
    input j,
    input k,
    input reset,
    output reg q,
    output q_bar
);
    assign q_bar = ~q;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 1'b0; 
        end else begin
            case ({j, k})
                2'b00: q <= q;   
                2'b01: q <= 1'b0;
                2'b10: q <= 1'b1; 
                2'b11: q <= ~q;  
                default: q <= q;
            endcase
        end
    end
endmodule

// TB
module tb_jk_ff;
    reg clk;
    reg j;
    reg k;
    reg reset;
    wire q;
    wire q_bar;
    jk_ff uut (
        .clk(clk), 
        .j(j), 
        .k(k), 
        .reset(reset), 
        .q(q), 
        .q_bar(q_bar)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        reset = 1;
        j = 0;
        k = 0;
        #10 reset = 0;
        #10 j = 1; k = 0;
        #10 j = 0; k = 0;
        #10 j = 0; k = 1;
        #10 j = 1; k = 1;
        #10 reset = 1;
        #10 reset = 0;
        #20 $finish;
    end
endmodule

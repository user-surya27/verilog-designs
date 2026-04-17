// Design code for SR Flip Flop
module sr_ff (
    input clk,    
    input rst,    
    input s,      
    input r,       
    output reg q,  
    output q_bar 
);
    assign q_bar = ~q;
    always @(posedge clk) begin
        if (rst) begin
            q <= 1'b0;
        end else begin
            case ({s, r})
                2'b00: q <= q;    
                2'b01: q <= 1'b0;
                2'b10: q <= 1'b1; 
                2'b11: q <= 1'bx; 
                default: q <= q;
            endcase
        end
    end
endmodule

// TB
module sr_ff_tb;
    reg clk;
    reg rst;
    reg s, r;
    wire q, q_bar;
    sr_ff dut (
        .clk(clk),
        .rst(rst),
        .s(s),
        .r(r),
        .q(q),
        .q_bar(q_bar)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0; rst = 1; s = 0; r = 0;
        #10 rst = 0;
        #10 s = 1; r = 0;
        #10 s = 0; r = 0;
        #10 s = 0; r = 1;
        #10 s = 1; r = 1;
        #20 $finish;
    end
endmodule

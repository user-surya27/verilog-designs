// Design Code for T Flip Flop
module tff (
    input clk,  
    input rstn, 
    input t,    
    output reg q 
);
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            q <= 1'b0;    
        end else if (t) begin
            q <= ~q;      
        end else begin
            q <= q;     
        end
    end
endmodule

// TB
module tff_tb;
    reg clk;
    reg rstn;
    reg t;
    wire q;
    tff uut (
        .clk(clk),
        .rstn(rstn),
        .t(t),
        .q(q)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        rstn = 0;
        t = 0;
        #15 rstn = 1;
        #10 t = 1;  
        #20 t = 0; 
        #20 t = 1; 
        #20 t = 1;  
        #50 $finish; 
    end
endmodule

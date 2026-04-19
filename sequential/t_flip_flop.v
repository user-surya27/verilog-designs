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


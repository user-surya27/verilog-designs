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


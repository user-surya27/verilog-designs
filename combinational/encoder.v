// Design code for 4:2 Encoder 
module encoder_4to2 (
    input [3:0] d,   
    output reg [1:0] y 
);
    always @(*) begin
        case(d)
            4'b0001: y = 2'b00;
            4'b0010: y = 2'b01;
            4'b0100: y = 2'b10;
            4'b1000: y = 2'b11;
            default: y = 2'bxx;
        endcase
    end
endmodule

// TB
module tb_encoder;
    reg [3:0] d;
    wire [1:0] y;
    encoder_4to2 uut (
        .d(d), 
        .y(y)
    );
    initial begin
        $monitor("Time=%0t | Input d=%b | Output y=%b", $time, d, y);
        d = 4'b0001; #10;
        d = 4'b0010; #10;
        d = 4'b0100; #10;
        d = 4'b1000; #10;
        d = 4'b0000; #10;
        $finish;
    end
endmodule

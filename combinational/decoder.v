// Design code for 2:4 Decoder 
module decoder_2to4 (
    input [1:0] in,   
    input enable,     
    output reg [3:0] out
);
    always @(*) begin
        if (!enable) begin
            out = 4'b0000;
        end else begin
            case (in)
                2'b00: out = 4'b0001;
                2'b01: out = 4'b0010;
                2'b10: out = 4'b0100;
                2'b11: out = 4'b1000;
                default: out = 4'b0000;
            endcase
        end
    end
endmodule

// TB
module tb_decoder;
    reg [1:0] tb_in;
    reg tb_enable;
    wire [3:0] tb_out;
    decoder_2to4 uut (
        .in(tb_in),
        .enable(tb_enable),
        .out(tb_out)
    );
    initial begin
        $monitor("Time=%0t | Enable=%b | Input=%b | Output=%b", $time, tb_enable, tb_in, tb_out);
        tb_enable = 0; tb_in = 2'b00; #10;
        tb_enable = 1;
        tb_in = 2'b00; #10;
        tb_in = 2'b01; #10;
        tb_in = 2'b10; #10;
        tb_in = 2'b11; #10;
        $finish;
    end
endmodule

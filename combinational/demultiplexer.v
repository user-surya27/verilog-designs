// Design code for 1:4 Demux
module demux_1to4 (
    input in,         
    input [1:0] sel,   
    output reg y0, 
    output reg y1,      
    output reg y2,     
    output reg y3     
);
    always @(*) begin
        y0 = 0; y1 = 0; y2 = 0; y3 = 0;
        case (sel)
            2'b00: y0 = in; 
            2'b01: y1 = in; 
            2'b10: y2 = in; 
            2'b11: y3 = in;
            default: ;   
        endcase
    end
endmodule

// TB
module tb_demux;
    reg in;
    reg [1:0] sel;
    wire y0, y1, y2, y3;
    demux_1to4 uut (
        .in(in),
        .sel(sel),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3)
    );
    initial begin
        $monitor("Time=%0t | sel=%b | in=%b -> y0=%b, y1=%b, y2=%b, y3=%b", 
                 $time, sel, in, y0, y1, y2, y3);
        in = 1; 
        sel = 2'b00; #10; 
        sel = 2'b01; #10; 
        sel = 2'b10; #10; 
        sel = 2'b11; #10; 
        in = 0;           
        sel = 2'b01; #10; 
        $finish;
    end
endmodule

module circuit_b (z, d1_seg);
    input z;
    output reg [6:0] d1_seg;

    always @(*) begin
        if (z)
            d1_seg = 7'b1111001; // "1"
        else
            d1_seg = 7'b1000000; // "0"
    end
endmodule

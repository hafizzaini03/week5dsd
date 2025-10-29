module circuitA_new(
    input [3:0] s,      // s3 s2 s1 s0 from adder
    output reg [3:0] a  // a3 a2 a1 a0 output
);
    always @(*) begin
        case (s)
            4'b1010: a = 4'b0000; // 10 → 0
            4'b1011: a = 4'b0001; // 11 → 1
            4'b1100: a = 4'b0010; // 12 → 2
            4'b1101: a = 4'b0011; // 13 → 3
            4'b1110: a = 4'b0100; // 14 → 4
            4'b1111: a = 4'b0101; // 15 → 5
            4'b0000: a = 4'b0110; // 16 → 6
            4'b0001: a = 4'b0111; // 17 → 7
            4'b0010: a = 4'b1000; // 18 → 8
            4'b0011: a = 4'b1001; // 19 → 9
            default: a = 4'b1111;
        endcase
    end
endmodule

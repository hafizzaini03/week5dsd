module carry_decoder (
    input [6:0] d1_seg,   //7 seg output from circuit_b
    output reg carry
);
    always @(*) begin
        case (d1_seg)
            7'b1111001: carry = 1; // “1”
            7'b1000000: carry = 0; // “0”
            default: carry = 0; 
        endcase
    end
endmodule

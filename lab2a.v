module lab2a (v, d1, d0);
    input [3:0] v;
    output [6:0] d1, d0; // seven-seg outputs

    wire z;
    wire [3:0] v_or_a;
    wire [2:0] a_temp;

    // Instantiate modules
    comparator COMP(v, z);
    circuit_a A(v, a_temp);

    // extend a_temp to 4-bit (for decoder input)
    wire [3:0] a_ext = {1'b0, a_temp};

    mux2to1_4bit MUX(v, a_ext, z, v_or_a);
    seven_seg_decoder DEC0(v_or_a, d0);
    circuit_b B(z, d1);

endmodule

module mux2to1_4bit (a, b, sel, y);
    input [3:0] a, b;
    input sel;
    output [3:0] y;

    assign y = sel ? b : a;
endmodule

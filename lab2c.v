module lab2c (cin, a, b, d2, d1, d0);
    input cin;
    input [7:0] a, b;          
    output [6:0] d2, d1, d0;   
    
	 // wires
    wire [6:0] d1_ones, d0_ones;  // output from ones digit lab2b
    wire carry_ones;               // logic carry between ones → tens

    //Ones place adder
    lab2b ones_digit(
        .cin(cin),
        .a(a[3:0]),
        .b(b[3:0]),
        .d1(d1_ones),
        .d0(d0_ones)
    );

    // Decode carry from 7-seg pattern
    carry_decoder cd0(
        .d1_seg(d1_ones),
        .carry(carry_ones)
    );

    // Tens place adder
    lab2b tens_digit(
        .cin(carry_ones),
        .a(a[7:4]),
        .b(b[7:4]),
        .d1(d2),
        .d0(d1)
    );

    // Connect ones place display
    assign d0 = d0_ones;

endmodule

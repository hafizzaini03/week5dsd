module lab2b (cin, a, b, d1, d0);
    input cin;
    input [3:0] a, b; 
    output [6:0] d1, d0;

    wire [3:0] s;
    wire [3:0] a_circuitA;
    wire c1, c2, c3, cout;
    wire comp, z;
    wire [3:0] m;
	 

    // 4-bit adder
    fulladd add0(a[0], b[0], cin, s[0], c1);
    fulladd add1(a[1], b[1], c1,  s[1], c2);
    fulladd add2(a[2], b[2], c2,  s[2], c3);
    fulladd add3(a[3], b[3], c3,  s[3], cout);

    // Circuit A
    circuitA_new A0(s, a_circuitA);

    // Comparator and OR gate
    comparator comp0(s, comp);
    or (z, cout, comp);

    // 4-bit MUX
    mux2to1_4bit mux0(s, a_circuitA, z, m);

    // Display decoders
    circuit_b dec1(z, d1);
    seven_seg_decoder dec0(m, d0);
	 
	 
	  
endmodule

module comparator (v,z);
    input [3:0] v;
	 output z;
	 assign z = (v > 9) ? 1 : 0 ;
endmodule	 
module circuit_a (
   input [3:0] v,
	output reg [2:0] a
);

always @ (*) begin
   case (v)
	     4'b1010 : a = 3'b000; 
		  4'b1011 : a = 3'b001; 
		  4'b1100 : a = 3'b010; 
		  4'b1101 : a = 3'b011; 
		  4'b1110 : a = 3'b100; 
		  4'b1111 : a = 3'b101; 
		  
		  default : a = 3'bxxx;
		  
	endcase
end

endmodule	
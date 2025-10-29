module fulladd(x,y,c_in,sum,c_out);

input x,y,c_in;
output sum,c_out;

wire and1,and2,and3;

xor (sum,x,y,c_in);

and (and1,x,y);
and (and2,x,c_in);
and (and3,y,c_in);

or (c_out,and1,and2,and3);

endmodule
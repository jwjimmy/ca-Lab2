module sign(out,in);
    output[31:0] out;
    input[31:0] in;
	reg out;

	always @ (in)
	begin
    	out = ~in + 1;
	end
endmodule

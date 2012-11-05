module Sign32Bit(out,in);
    output [31:0] out;
    input [31:0] in;
    wire S32Bcout;
	wire [31:0] temp = ~in; // thirty-two one-bit-wide 'not' gates in parallel - delay of ten
	Adder32Bit S32BAdder (out, S32Bcout, temp, 32'b1);
endmodule


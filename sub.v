module Sub32Bit(
	output [31:0] out,
	input [31:0] a,
	input [31:0] b
	);
	wire [31:0] twosComp;
	Sign32Bit SubSigner(twosComp, b);
	Adder32Bit SubAdder(out, cout, a, twosComp);


endmodule

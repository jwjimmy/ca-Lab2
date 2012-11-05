module Mul32Bit(
	output [31:0] out,
	output [31:0] cout,
	input [31:0] a,
	input [31:0] b
	);
	wire [31:0] twosComp;
	wire [31:0] SubCout
	sign(twosComp,b);
	Adder32Bit SubAdder(out,SubCout,a,twoscomp)


endmodule
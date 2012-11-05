/*
This module is constructed out of a single 32b wide shift register with a counter (fed with inB) as a clock generator.

While slower than a mux/mux shifter, this is considerably smaller, and much easier to implement.
*/



module shift(
	output reg [31:0] out,
	input [31:0] inA, inB
	);

	reg [31:0] level0, level1, level2, level3, level4; // create 32b vars

	always @ (inA, inB) begin
		level0 = (inB&5'b00001) ? (inA << 1) : inA;
		level1 = (inB&5'b00010) ? (level0 << 2) : level0;
		level2 = (inB&5'b00100) ? (level1 << 4) : level1;
		level3 = (inB&5'b01000) ? (level2 << 8) : level2;
		level4 = (inB&5'b10000) ? (level3 << 16) : level3;
		out = level4;
	end
endmodule

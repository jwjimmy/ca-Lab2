/*
This module was constructed out of a single 32b wide shift register with a counter (fed with inB) as a clock generator.

While slower than a mux/mux shifter, this was considerably smaller, and much easier to implement.

This module was then constructed out of a series of if statements, but the synthesis was semantically ambiguous.

This module was finally constructed out of a series of muxes and wires, providing a sane prop. delay with well-defined behavior.

*/



module shiftLeft(
	output reg [31:0] out,
	input [31:0] inA, inB
	);

	reg [31:0] temp; // use one temporary state variable to shave off a few dozen flipflops.

	// thirty-two parallel two-input muxes has a timing equivalent to that of approximately one two-input AND gate and a two-input OR gate, AKA 40u 

	always @ (inA, inB) begin
		// level0
		#40 temp = (inB&5'b00001) ? (inA << 1) : inA; // if b0 of inB is 1, shift by 1, else don't shift
		// level1
		#40 temp = (inB&5'b00010) ? (temp << 2) : temp; // if b1 of inB is 1...
		// level2
		#40 temp = (inB&5'b00100) ? (temp << 4) : temp;
		// level3
		#40 temp = (inB&5'b01000) ? (temp << 8) : temp;
		// level4
		#40 temp = (inB&5'b10000) ? (temp << 16) : temp;
		out = temp; // 'out' gets the value of 'temp'
	end
endmodule

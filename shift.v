/*
This module is constructed out of a single 32b wide shift register with a counter (fed with inB) as a clock generator.

While slower than a mux/mux shifter, this is considerably smaller, and much easier to implement.
*/

module shift(
	output reg[31:0] out,
	input [31:0] inA, inB
	);

	reg[31:0] temp; // create 32b var 'temp'

	always @ (inB, inA) begin // when inB or inA are changed
		temp = inA; // temp gets inA
		repeat( inB ) begin // for each in count(inB)
			#10 temp = temp << 1; // shift the 32b number "temp" by one using a 32b wide shift register
		end
		out = temp; // out gets the value of temp
	end 
endmodule

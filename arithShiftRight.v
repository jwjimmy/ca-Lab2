module arithShiftRight(
	output [31:0] out,
	input [31:0] inA, inB
	);

	//wire [31:0] temp0, temp1, temp2;

	//shiftRight rightshifter0 (temp0, inA, inB);
	//adder adder0 (temp1, inB, 1'b1);
	//shiftleft leftshifter0 (temp2, 1, temp1);
	always @ (inA, inB) begin
		out = (inA >> inB) | (((inA >> 31) << (inB + 1))-1)^32'hFFFFFFFF;
	end
endmodule

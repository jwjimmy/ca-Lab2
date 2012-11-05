module arithShiftRight(
	output reg [31:0] out,
	input [31:0] inA, inB
	);

	wire [31:0] rightOut0, leftOut, rightOut1;
	always @ (inA or inB) begin
		out = (inA >> inB) |  (((inA >> 31) << (inB + 1))-1)^32'hffffffff;
	end
endmodule

// set if less than - set out to 1'b1 if a is less than b

module slt (
	output wire [31:0] out, 
	input wire [31:0] a, b
	);

	wire [31:0] tmp;

	Sub32Bit subcontractor (tmp, a, b); // subtract b from a, use 'tmp' to move the result

	shiftRight rightshifter (out, tmp, 31); //  shift 'tmp' right by 31b such that last (sign) is in the 0th column of 'out'

endmodule
		

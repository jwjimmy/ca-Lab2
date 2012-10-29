module alu (busA, busB, ctrl, out, zero, ovf, carry);
	output [31:0] out;
	input [31:0] busA, busB;
	input [3:0] ctrl;
	output zero, ovf, carry;
endmodule

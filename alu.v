module alu (busA, busB, ctrl, out, zero, ovf, carry);
	output [31:0] out;
	input [31:0] busA, busB;
	input [3:0] ctrl;
	output zero, ovf, carry;

	reg out;

	always @ (busA, busB) begin
		case (ctrl)
			3'b000: assign out = busA + busB;
			3'b001: assign out = busA - busB;
			3'b010: assign out = busA ^ busB;
			3'b011: assign out = (busA < busB);
			3'b100: assign out = busA*busB;
			3'b101: assign out = busA << busB;
			3'b110: assign out = busA >> busB;
			3'b111: assign out = busA >>> busB;
		endcase
	end
endmodule

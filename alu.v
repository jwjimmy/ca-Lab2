module alu (
	input [31:0] busA, busB, 
	input [3:0] ctrl, 
	output reg [31:0] out, 
	output zero, ovf, carry
	);


shiftRight shiftRighter (out, a, b);
shiftLeft shiftLefter (out, a, b);
slt slter (out, a, b);
Add32Bit adder (out, carry, a, b);
Sub32Bit subber (out, a, b);

	always @ (busA, busB) begin
		case (ctrl)
			3'b000: adder (out, carry, a, b); // add
			3'b001: subber (out, a, b); // subtract
			3'b010: #20 out = a ^ b; // xor - built via 32 parallel bitwise two-input xor gates
			3'b011: slter (out, a, b); // set if less than
			3'b101: shiftLefter (out, a, b); // <<
			3'b110: shiftRighter (out, a, b); // >>
			default: assign out = 32'b0;
		endcase
	end
endmodule

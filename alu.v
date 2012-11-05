module alu (
	input [31:0] a, b, 
	input [3:0] ctrl, 
	output reg [31:0] out, 
	output zero, ovf, carry
	);
	wire [31:0] out0, a0, b0;
	wire carry0;

shiftRight shiftRighter (out0, a0, b0);
shiftLeft shiftLefter (out0, a0, b0);
slt slter (out0, a0, b0);
Adder32Bit adder (out0, carry0, a0, b0);
Sub32Bit subber (out0, a0, b0);

	always @ (a,b) begin
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

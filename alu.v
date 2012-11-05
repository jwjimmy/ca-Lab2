module alu (
	input [31:0] a, b, 
	input [3:0] ctrl, 
	output reg [31:0] out, 
	output zero, ovf, carry
	);
	wire carryA;
	wire [31:0] outSR, aSR, bSR;
	wire [31:0] outSL, aSL, bSL;
	wire [31:0] outSLT, aSLT, bSLT;
	wire [31:0] outA, aA, bA;
	wire [31:0] outS, aS, bS;

shiftRight shiftRighter (outSR, aSR, bSR);
shiftLeft shiftLefter (outSL, aSL, bSL);
slt slter (outSLT, aSLT, bSLT);
Adder32Bit adder (outA, carryA, aA, bA);
Sub32Bit subber (outS, aS, bS);

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

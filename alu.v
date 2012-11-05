module alu (
	input [31:0] a, b, 
	input [3:0] ctrl, 
	output reg [31:0] out, 
	output zero, ovf, carry
	);
	wire carryA;
	wire [31:0] outSR;
	wire [31:0] outSL;
	wire [31:0] outSLT;
	wire [31:0] outA;
	wire [31:0] outS;

shiftRight shiftRighter (outSR, a, b);
shiftLeft shiftLefter (outSL, a, b);
slt slter (outSLT, a, b);
Adder32Bit adder (outA, carry, a, b);
Sub32Bit subber (outS, a, b);


	always @ (a,b) begin
		case (ctrl)
			3'b000: assign out = outA; // add
			3'b001: assign out = outS; // subtract
			3'b010: #20 out = a ^ b; // xor - built via 32 parallel bitwise two-input xor gates
			3'b011: assign out = outSLT; // set if less than
			3'b101: assign out = outSL; // <<
			3'b110: assign out = outSR; // >>
			default: assign out = 32'b0;
		endcase
	end
endmodule

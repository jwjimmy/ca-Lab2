module alu (
	input [31:0] busA, busB, 
	input [3:0] ctrl, 
	output reg [31:0] out, 
	output zero, ovf, carry
	);

	always @ (busA, busB) begin
		case (ctrl)
			3'b000: #320 assign out = busA + busB; // add
			3'b001: #320 assign out = busA - busB; // subtract - sign then add
			3'b010: #20 assign out = busA ^ busB; // xor - build via 32 parallel bitwise two-input xor gates
			3'b011: #640 assign out = (busA < busB); // set if less than - build off of subtraction & look at 31st bit
			3'b100: #10000 assign out = busA*busB; // multiply
			3'b101: #150 assign out = busA << busB; // leftshift - use "for" loop and shift by one each time?
			3'b110: #150 assign out = busA >> busB; // rightshift
			3'b111: #250 assign out = busA >>> busB; // arithmatic (sign extended) rightshift - clock in 1s, instead of zeroes
		endcase
	end
endmodule

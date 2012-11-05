module Adder1Bit(
	output out,
	output cout,
	input a,
	input b,
    input cin
	);
    wire xorab, andcinx, andab;

	//always @(a or b)
	//begin
        xor one(xorab,a,b); //2
        xor two(out,xorab,cin); //2
        and three(andcinx,xorab,cin); //2
		and four(andab,a,b); //2
		or five(cout,andcinx,andab); //2
	//end
endmodule

module Adder3Bit(
	output [2:0] out,
	output [2:0] cout,
	input [2:0] a,
	input [2:0] b
	);
    Adder1Bit bit0(out[0],cout[0],a[0],b[0],1'b0);
    Adder1Bit bit1(out[1],cout[1],a[1],b[1],cout[0]);
    Adder1Bit bit2(out[2],cout[2],a[2],b[2],cout[1]);
endmodule

module Adder32BitB(
	output reg[31:0] out,
	output reg[31:0] cout,
	input [31:0] a,
	input [31:0] b
	);

	always @(a or b)
	begin
		#320 {cout, out} = a + b;
	end
endmodule

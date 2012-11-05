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

module Adder32Bit(
	output [31:0] out,
	output [31:0] cout,
	input [31:0] a,
	input [31:0] b
	);
	Adder1Bit bit0(out[0],cout[0],a[0],b[0],1'b0);
	Adder1Bit bit1(out[1],cout[1],a[1],b[1],cout[0]);
	Adder1Bit bit2(out[2],cout[2],a[2],b[2],cout[1]);
	Adder1Bit bit3(out[3],cout[3],a[3],b[3],cout[2]);
	Adder1Bit bit4(out[4],cout[4],a[4],b[4],cout[3]);
	Adder1Bit bit5(out[5],cout[5],a[5],b[5],cout[4]);
	Adder1Bit bit6(out[6],cout[6],a[6],b[6],cout[5]);
	Adder1Bit bit7(out[7],cout[7],a[7],b[7],cout[6]);
	Adder1Bit bit8(out[8],cout[8],a[8],b[8],cout[7]);
	Adder1Bit bit9(out[9],cout[9],a[9],b[9],cout[8]);
	Adder1Bit bit10(out[10],cout[10],a[10],b[10],cout[9]);
	Adder1Bit bit11(out[11],cout[11],a[11],b[11],cout[10]);
	Adder1Bit bit12(out[12],cout[12],a[12],b[12],cout[11]);
	Adder1Bit bit13(out[13],cout[13],a[13],b[13],cout[12]);
	Adder1Bit bit14(out[14],cout[14],a[14],b[14],cout[13]);
	Adder1Bit bit15(out[15],cout[15],a[15],b[15],cout[14]);
	Adder1Bit bit16(out[16],cout[16],a[16],b[16],cout[15]);
	Adder1Bit bit17(out[17],cout[17],a[17],b[17],cout[16]);
	Adder1Bit bit18(out[18],cout[18],a[18],b[18],cout[17]);
	Adder1Bit bit19(out[19],cout[19],a[19],b[19],cout[18]);
	Adder1Bit bit20(out[20],cout[20],a[20],b[20],cout[19]);
	Adder1Bit bit21(out[21],cout[21],a[21],b[21],cout[20]);
	Adder1Bit bit22(out[22],cout[22],a[22],b[22],cout[21]);
	Adder1Bit bit23(out[23],cout[23],a[23],b[23],cout[22]);
	Adder1Bit bit24(out[24],cout[24],a[24],b[24],cout[23]);
	Adder1Bit bit25(out[25],cout[25],a[25],b[25],cout[24]);
	Adder1Bit bit26(out[26],cout[26],a[26],b[26],cout[25]);
	Adder1Bit bit27(out[27],cout[27],a[27],b[27],cout[26]);
	Adder1Bit bit28(out[28],cout[28],a[28],b[28],cout[27]);
	Adder1Bit bit29(out[29],cout[29],a[29],b[29],cout[28]);
	Adder1Bit bit30(out[30],cout[30],a[30],b[30],cout[29]);
	Adder1Bit bit31(out[31],cout[31],a[31],b[31],cout[30]);


endmodule


module Adder1Bit(
	output out,
	output temp,
	input a,
	input b,
    input cin
	);
    wire xorab, andcinx, andab;

	xor #20 one(xorab,a,b);
	xor #20 two(out,xorab,cin);
	and #20 three(andcinx,xorab,cin);
	and #20 four(andab,a,b);
	or #20 five(temp,andcinx,andab);
endmodule

module Adder32Bit(
	output [31:0] out,
	output cout,
	input [31:0] a,
	input [31:0] b
	);
	wire [31:0] temp;
	Adder1Bit bit0(out[0],temp[0],a[0],b[0],1'b0);
	Adder1Bit bit1(out[1],temp[1],a[1],b[1],temp[0]);
	Adder1Bit bit2(out[2],temp[2],a[2],b[2],temp[1]);
	Adder1Bit bit3(out[3],temp[3],a[3],b[3],temp[2]);
	Adder1Bit bit4(out[4],temp[4],a[4],b[4],temp[3]);
	Adder1Bit bit5(out[5],temp[5],a[5],b[5],temp[4]);
	Adder1Bit bit6(out[6],temp[6],a[6],b[6],temp[5]);
	Adder1Bit bit7(out[7],temp[7],a[7],b[7],temp[6]);
	Adder1Bit bit8(out[8],temp[8],a[8],b[8],temp[7]);
	Adder1Bit bit9(out[9],temp[9],a[9],b[9],temp[8]);
	Adder1Bit bit10(out[10],temp[10],a[10],b[10],temp[9]);
	Adder1Bit bit11(out[11],temp[11],a[11],b[11],temp[10]);
	Adder1Bit bit12(out[12],temp[12],a[12],b[12],temp[11]);
	Adder1Bit bit13(out[13],temp[13],a[13],b[13],temp[12]);
	Adder1Bit bit14(out[14],temp[14],a[14],b[14],temp[13]);
	Adder1Bit bit15(out[15],temp[15],a[15],b[15],temp[14]);
	Adder1Bit bit16(out[16],temp[16],a[16],b[16],temp[15]);
	Adder1Bit bit17(out[17],temp[17],a[17],b[17],temp[16]);
	Adder1Bit bit18(out[18],temp[18],a[18],b[18],temp[17]);
	Adder1Bit bit19(out[19],temp[19],a[19],b[19],temp[18]);
	Adder1Bit bit20(out[20],temp[20],a[20],b[20],temp[19]);
	Adder1Bit bit21(out[21],temp[21],a[21],b[21],temp[20]);
	Adder1Bit bit22(out[22],temp[22],a[22],b[22],temp[21]);
	Adder1Bit bit23(out[23],temp[23],a[23],b[23],temp[22]);
	Adder1Bit bit24(out[24],temp[24],a[24],b[24],temp[23]);
	Adder1Bit bit25(out[25],temp[25],a[25],b[25],temp[24]);
	Adder1Bit bit26(out[26],temp[26],a[26],b[26],temp[25]);
	Adder1Bit bit27(out[27],temp[27],a[27],b[27],temp[26]);
	Adder1Bit bit28(out[28],temp[28],a[28],b[28],temp[27]);
	Adder1Bit bit29(out[29],temp[29],a[29],b[29],temp[28]);
	Adder1Bit bit30(out[30],temp[30],a[30],b[30],temp[29]);
	Adder1Bit bit31(out[31],temp[31],a[31],b[31],temp[30]);
	and #20 (cout,temp[31],1'b1);
endmodule


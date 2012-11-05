module test_multiply;
	
	//initialize input and output variables
	reg[31:0] Ta, Tb;
	wire[31:0] Tout;
	wire Tcout;

	initial
	begin
		$monitor($time, , Tout, , Tcout, , Ta , ,Tb);
		$dumpfile("testmutiply.vcd");
		$dumpvars(0,test_multiply);

		Ta = 32'b1000;
		Tb = 32'b1001;
		#1000;
		Ta = 32'b1011;
		Tb = 32'b0001;
		#1000;
		Ta = 32'b1011;
		Tb = 32'b1111;
		#1000;
	end

	Mul32Bit Multiply32tester (Tout, Tcout, Ta, Tb);
endmodule

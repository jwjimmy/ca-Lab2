module test_sub;
	
	//initialize input and output variables
	reg[31:0] Ta, Tb;
	wire[31:0] Tout,Tcout;

	initial
	begin
		$monitor($time, , Tout, , Tcout, , Ta , ,Tb);
		$dumpfile("testsub.vcd");
		$dumpvars(0,test_sub);

		Ta = 32'b1000;
		Tb = 32'b1001;
		#1000;
		Ta = 32'b1011;
		Tb = 32'b0001;
		#1000;
		Ta = 32'b1011;
		Tb = 32'b1111;
		#1000;
		Ta = 32'b11011;
		Tb = 32'b011;
		#1000;
		Ta = 32'b1011;
		Tb = 32'b10000000001;
		#1000;
	end

	Sub32Bit tester (Tout, Tcout, Ta, Tb);
endmodule
module sltTest;
	
	//initialize input and output variables
	reg[31:0] Ta, Tb;
	wire[31:0] Tout;

	initial
	begin
		$monitor($time, , Tout, , Ta, , Tb);
		$dumpfile("sltTest.vcd");
		$dumpvars(0,sltTest);

		Ta = 1; 
		Tb = 2;
		#1000;
		Ta = 4;
		Tb = 3;
		#1000;
		Ta = 5;
		Tb = 6;
		#1000;
	end

	slt sltTester (Tout, Ta, Tb);
endmodule

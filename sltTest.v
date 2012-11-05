module sltTest;
	
	//initialize input and output variables
	reg[31:0] Ta, Tb;
	wire[31:0] Tout;

	initial
	begin
		$monitor($time, , Tout, , Ta, , Tb);
		$dumpfile("sltTest.vcd");
		$dumpvars(0,sltTest);

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

	slt tester (Tout, Ta, Tb);
endmodule

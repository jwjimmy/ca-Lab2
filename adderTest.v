module adderTest;
	
	//initialize input and output variables
	reg[31:0] Ta, Tb;
	wire[31:0] Tout;
	wire Tcout;

	initial
	begin
		$monitorh($time, , Tout, , Tcout, , Ta , ,Tb);
		$dumpfile("testadder.vcd");
		$dumpvars(0,adderTest);

		Ta = 32'b1000;
		Tb = 32'b1001;
		#500;
		Ta = 32'b1011;
		Tb = 32'b0001;
		#500;
		Ta = 32'b1011;
		Tb = 32'b1111;
		#500;
	end

	Adder32Bit tester (Tout, Tcout, Ta, Tb);
endmodule

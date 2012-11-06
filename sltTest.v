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
		#2000;
		Ta = 4;
		Tb = 3;
		#2000;
		Ta = 5;
		Tb = 6;
		#2000;
        Ta = 32'hffffffff;
        Tb = 1;
        #2000;
        Ta = 32'hfffffffe;
        Tb = 32'hffffffff;
        #2000;
	end

	slt sltTester (Tout, Ta, Tb);
endmodule

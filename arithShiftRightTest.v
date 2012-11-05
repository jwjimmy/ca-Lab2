module shiftRightTest;
	reg [31:0] TinA, TinB;
	wire [31:0] Tout;

	initial
	begin
		$dumpfile("shiftRightTest.vcd");
		$dumpvars(0,shiftRightTest);
		$monitorh($time, , Tout, , TinA, ,TinB);
		TinA = 32'hf0;
		TinB = 32'd2;
		#1000;
		TinA = 32'hfffffff0;
		#1000;
		TinB = 32'd4;
		#1000;
	end
	arithShiftRight arithShiftRightTester (Tout,TinA, TinB);
endmodule	

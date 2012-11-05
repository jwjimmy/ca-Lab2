module shiftRightTest;
	reg [31:0] TinA, TinB;
	wire [31:0] Tout;

	initial
	begin
		$dumpfile("shiftRightTest.vcd");
		$dumpvars(0,shiftRightTest);
		$monitor($time, , Tout, , TinA, ,TinB);
		TinA = 32'hffffffff;
		TinB = 32'd31;
		#500; 
		TinB = 32'd29;
		#500;
		TinB = 32'd23;
		#500;
	end
	shiftRight shiftRightTester (Tout,TinA, TinB);
endmodule	

module shiftLeftTest;
	reg [31:0] TinA, TinB;
	wire [31:0] Tout;

	initial
	begin
		$dumpfile("shiftLeftTest.vcd");
		$dumpvars(0,shiftLeftTest);
		$monitor($time, , Tout, , TinA, ,TinB);
		TinA = 32'b1;
		TinB = 32'd2;
		#500; 
		TinB = 32'd4;
		#500;
		TinB = 32'd8;
		#500;
	end
	shiftLeft shiftLeftTester (Tout,TinA, TinB);
endmodule	

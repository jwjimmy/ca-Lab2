module test_shift;
	reg [31:0] TinA, TinB;
	wire [31:0] Tout;

    initial
    begin
        $dumpfile("testshift.vcd");
        $dumpvars(0,test_shift);
        $monitor($time, , Tout, , TinA, ,TinB);
        TinA = 32'b1;
	initial
	begin
		$dumpfile("testsign.vcd");
		$dumpvars(0,test_shift);
		$monitor($time, , Tout, , TinA, ,TinB);
		TinA = 32'b1;
		TinB = 32'd2;
		#100; 
		TinB = 32'd4;
		#100;
		TinB = 32'd8;
		#100;
	end
	shift tester (Tout,TinA, TinB);
endmodule	

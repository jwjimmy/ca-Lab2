module aluTest;
	reg [31:0] TinA, TinB;
	wire [31:0] Tout;
    reg [4:0] control;
    wire zero, ovf, carry;

	initial
	begin
		$dumpfile("aluTest.vcd");
		$dumpvars(0,aluTest);
		$monitor($time, , Tout, , TinA, ,TinB);
		TinA = 32'b1;
		TinB = 32'd2;
        control = 5'd2;
		#500; 
		TinB = 32'd4;
		#500;
		TinB = 32'd8;
		#500;
	end
	alu aluTester (TinA, TinB, control, Tout, zero, ovf, carry);
endmodule	

module aluTest;
	reg [31:0] TinA, TinB;
	wire [31:0] Tout;
    reg [3:0] control;
    wire zero, ovf, carry;

	initial
	begin
		$dumpfile("aluTest.vcd");
		$dumpvars(0,aluTest);
		$monitor($time, , Tout, , TinA, ,TinB);
		TinA = 32'b1;
		TinB = 32'd2;
        control = 5'd0;
		#500;
		TinB = 32'd4;
		#500;
		TinB = 32'd8;
		#500;
		control = 5'd1;
		TinA = 32'b1011;
		TinB = 32'b1111;
		#1500;
		TinA = 32'b11011;
		TinB = 32'b011;
		#1500;
		TinA = 32'b1011;
		TinB = 32'b10000000001;
		#1500;
	end
	alu aluTester (TinA, TinB, control, Tout, zero, ovf, carry);
endmodule	

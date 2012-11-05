module test_adder;
	reg[31:0] Ta, Tb;
	wire[31:0] Tout,Tcout;
	initial
	begin
		$monitor($time, , Tout, , Tcout, , Ta , ,Tb);

		Ta = 32'b1000;
		Tb = 32'b1001;
		#1000;
		Ta = 32'b1011;
		#1000;
	end

	Adder32Bit tester (Tout, Tcout, Ta,Tb);
endmodule 

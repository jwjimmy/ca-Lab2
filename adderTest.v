module test_adder;
	reg[31:0] Ta, Tb;
	wire[31:0] Tout,Tcout;
	reg[2:0] Taone, Tbone;
	wire[2:0] Toutone, Tcoutone;
	initial
	begin
		$monitor($time, , Toutone, , Tcoutone, , Taone , ,Tbone);

		Ta = 32'b1000;
		Tb = 32'b1001;
		Taone = 3'b011;
		Tbone = 3'b010;
		#1000;
		Tbone = 3'b001;
		Ta = 32'b1011;
		#1000;
	end
	Adder3Bit tester1bit (Toutone, Tcoutone, Taone, Tbone);
	Adder32BitB tester (Tout, Tcout, Ta,Tb);
endmodule 

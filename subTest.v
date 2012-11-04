module test_adder;
    reg[31:0] Ta, Tb;
    wire[31:0] Tout,Tcout;
    initial
    begin
        $monitor($time, , Tout, , Tcout, , Ta , ,Tb);
        Ta = 32'b1000;
        Tb = 32'b1001;
        #10 Ta = 32'b1011;
    end

    Sub32Bit tester (Tout, Tcout, Ta,Tb);
endmodule 

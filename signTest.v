module test_sign;
    reg [31:0] Tin;
    wire [31:0] Tout;

    initial
    begin
        $dumpfile("testsign.vcd");
        $dumpvars(0,test_sign);
        $monitor($time, , Tout, , Tin);
        Tin = 32'b1000;
        #1000;
        Tin = 32'b1001;
        #1000;
        Tin = 32'b0000;
        #1000;
    end

    Sign32Bit tester (Tout,Tin);
endmodule    

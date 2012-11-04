module test_sign;
    reg [31:0] Tin;
    wire [31:0] Tout;

    initial
    begin
        Tin = 32'b1000;
        #10 Tin = 32'b1001;
    end

    sign tester (Tout,Tin);
    initial
        $monitor($time, , Tout, , Tin);
endmodule    

module sign(out,in);
    output[31:0] out;
    input[31:0] in;

    assign out = ~in + 1;
endmodule

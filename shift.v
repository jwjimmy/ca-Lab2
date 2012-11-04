module shift(out, inA, inB);
    output[31:0] out;
    input[31:0] inA, inB;
	reg out;
	reg[31:0] temp;
	always @ (inB, inA) begin
		temp = inA;
		repeat( inB ) begin
			#10 temp = temp << 1;
		end
		out = temp;
	end 
endmodule

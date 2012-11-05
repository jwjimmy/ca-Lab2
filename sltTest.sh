iverilog -o sltTest.vvp sub.v adder.v sign.v slt.v shiftRight.v sltTest.v
vvp sltTest.vvp | tee data.txt
gtkwave sltTest.vcd &
rm sltTest.vvp 

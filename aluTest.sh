iverilog -o aluTest.vvp alu.v aluTest.v adder.v sub.v slt.v shiftLeft.v
vvp aluTest.vvp | tee data.txt
gtkwave aluTest.vcd &
rm aluTest.vvp 

iverilog -o multiplyTest.vvp adder.v multiply.v multiplyTest.v shiftLeft.v
vvp multiplyTest.vvp | tee data.txt
gtkwave testmultiply.vcd &
rm multiplyTest.vvp 

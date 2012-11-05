iverilog -o shiftRightTest.vvp shiftRight.v shiftRightTest.v
vvp shiftRightTest.vvp | tee data.txt
gtkwave shiftRightTest.vcd & 
rm shiftRightTest.vvp 

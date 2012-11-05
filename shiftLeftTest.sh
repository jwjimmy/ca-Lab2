iverilog -o shiftLeftTest.vvp shiftLeft.v shiftLeftTest.v
vvp shiftLeftTest.vvp | tee data.txt
gtkwave shiftLeftTest.vcd & 
rm shiftLeftTest.vvp 

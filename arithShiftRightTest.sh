iverilog -o arithShiftRightTest.vvp arithShiftRight.v shiftLeft.v arithShiftRightTest.v
vvp arithShiftRightTest.vvp | tee data.txt
gtkwave arithShiftRightTest.vcd & 
rm arithShiftRightTest.vvp 

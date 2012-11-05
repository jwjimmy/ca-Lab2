iverilog -o adderTest.vvp adder.v adderTest.v
vvp adderTest.vvp | tee data.txt
gtkwave testadder.vcd &
rm adderTest.vvp 

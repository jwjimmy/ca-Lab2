iverilog -o adderTest.vvp adder.v adderTest.v
vvp adderTest.vvp | tee data.txt
rm adderTest.vvp 

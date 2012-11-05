iverilog -o subTest.vvp sub.v subTest.v sign.v adder.v
vvp subTest.vvp | tee data.txt
gtkwave testsub.vcd &
rm subTest.vvp 

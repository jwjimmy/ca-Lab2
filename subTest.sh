iverilog -o subTest.vvp sub.v subTest.v sign.v
vvp subTest.vvp | tee data.txt
gtkwave testsub.vcd &
rm subTest.vvp 

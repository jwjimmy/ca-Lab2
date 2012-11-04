iverilog -o subTest.vvp sub.v subTest.v
vvp subTest.vvp | tee data.txt
rm subTest.vvp 

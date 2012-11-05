iverilog -o signTest.vvp sign.v signTest.v adder.v
vvp signTest.vvp | tee data.txt
gtkwave testsign.vcd &
rm signTest.vvp 

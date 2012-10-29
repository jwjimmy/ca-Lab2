iverilog -o signTest.vvp sign.v signTest.v
vvp signTest.vvp | tee data.txt
rm signTest.vvp 

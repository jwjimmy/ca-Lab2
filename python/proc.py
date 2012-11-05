#proc.py
'''
	Adder1Bit bit0(out[0],cout[0],a[0],b[0],1'b0);
    Adder1Bit bit1(out[1],cout[1],a[1],b[1],cout[0]);
    Adder1Bit bit2(out[2],cout[2],a[2],b[2],cout[1]);
    '''
def Adder32Bit():
	i="0"
	print "Adder1Bit bit"+i+"(out["+i+"],cout["+i+"],a["+i+"],b["+i+"],1'b0);"
	for i in range(1,32):
		j = str(i-1)
		i = str(i)
		print "Adder1Bit bit"+i+"(out["+i+"],cout["+i+"],a["+i+"],b["+i+"],cout["+j+"]);"
#Adder32Bit()

'''
not n0(out[0],in[0]);
	not n1(out[1],in[1]);
	not n2(out[2],in[2]);
	'''
def Sign32Bit():
	for i in range(0,32):
		i = str(i)
		print "not n"+i+"(out["+i+"],in["+i+"]);"

#Sign32Bit()

'''
wire [31:0] sh0;
	'''
def Mul32BitSh():
	for i in range(0,32):
		i = str(i)
		print "wire [31:0] sh"+i+";"
#Mul32BitSh()

'''
shiftLeft shift0(sh0,b,1'b1);
	'''
def Mul32Bit():
	#beforehand you need to print the following:
	#shiftLeft shift0(sh0,b);
	for i in range(1,32):
		j = str(i-1)
		i = str(i)
		print "shiftLeft shift"+i+"(sh"+i+",sh"+j+",1'b1);"
#Mul32Bit()

'''
and(sh0,sh0,a[0])
and(sh1,sh1,a[1])
	print "and(sh"+i+",sh"+i+",a["+i+"]);"
	'''
def Mul32BitAnd():
	for i in range(0,32):
		i = str(i)
		for j in range(0,32):
			j = str(j)
			print "and(sh"+i+"["+j+"],sh"+i+"["+j+"],a["+i+"]);"
Mul32BitAnd()

'''
Adder32Bit add0(out,cout,sh1,sh0);
	'''
def Mul32BitAdd():
	for i in range(1,32):
		#j = str(i-1)
		i = str(i)
		print "Adder32Bit add"+i+"(out,cout"+i+",out,sh"+i+");"
#Mul32BitAdd()

'''
wire cout0;
	'''
def Mul32BitSt():
	for i in range(0,32):
		i = str(i)
		print "wire cout"+i+";"
#Mul32BitSt()
'''
	'''
def Mul32BitOr():
	string = "or(cout"
	for i in range(0,32):
		i = str(i)
		string+=",cout"+i
	string += ");"
	print string
#Mul32BitOr()
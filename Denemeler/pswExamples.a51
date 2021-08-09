#include "aduc841.h"

//Bank gecisleri farkli sekillerde olabilir. PSW'nin ucncu ve dorduncu biti belirtir. setb clr PSW.3 PSW.4, clr setb rs1 rs0 <= burada dort durum yapilabilir. 
		mov r0,#31h
		setb psw.3
		mov r1,#32h
		clr psw.3
		setb psw.4
		mov r2,#33h
		setb psw.3
		mov r3,#34h
		
		clr rs1
		clr rs0
		setb rs0
		setb rs1
		mov r1,#69h
		
	end
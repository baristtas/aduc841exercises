#include "aduc841.h"

//8: p3’ten gelen veri p0’dan gelen veriye esit ise p1.1 bagli ledi, aksi takdirde p1.2 ledini yakiniz. JZ komutunu kullaniniz.

org 0000h
	X:
	mov a , p3
	mov r0, p0
	subb a , r0
	
	jz Y
		setb p1.2 //pull up yapisi var diye
		clr p1.1
		sjmp X
	
	Y:
		setb p1.1
		clr p1.2
		sjmp X
end
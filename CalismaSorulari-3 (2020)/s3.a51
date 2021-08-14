#include "aduc841.h"

org 0000h
	X:
		JNB P1.0 , Y // p1.0 0 ise y'ye atla. y soldan saga kaydiracak
		JNB P1.1 , Z // usttekinin aynisi sadece Z sagdan sola kaydiracak
		sjmp X
	
	Y:
		mov a , #10000000b //sekizinci bit kaydirma icin birlendi.
		sjmp sagaKaydir
	
	Z:
		mov a , #01h //ilk bit kaydirma icin birlendi
		sjmp solaKaydir
	
	solaKaydir:
		mov p3 , a
		rl a
		sjmp solaKaydir
	
	sagaKaydir:
		mov p3 , a
		rr a
		sjmp sagaKaydir
end
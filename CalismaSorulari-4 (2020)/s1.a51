#include "aduc841.h"

org 0000h
	ana:
		jnb p1.0, birinciButonBasildi
		jnb p1.1, ikinciButonBasildi
		sjmp ana
		
	birinciButonBasildi:
		mov a , #00001111b
		anl a , p3 //low nibble sifirlandi.	
		mov b , #2h
		mul AB
		mov p0,a
		sjmp ana
	ikinciButonBasildi:
		mov a , #00001111b
		anl a , p3 //low nibble sifirlandi.	
		mov b , #3h
		mul AB
		mov p0,a
		sjmp ana
end
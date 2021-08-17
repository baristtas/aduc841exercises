#include "aduc841.h"
// 000e'ye dönmeli. çünkü acall 2 byte ve program hafizadaki adresi 000C
//bundan dolayi 08h ram adresine 0e yazilir, 09h ram adresine de 00h yazilir
org 0000h
	ana:
		jnb p1.0, birinciButonBasildi
		jnb p1.1, ikinciButonBasildi
		sjmp ana
		
	birinciButonBasildi:
		mov a , #00001111b
		anl a , p3 //high nibble sifirlandi.	
		acall ikiyleCarp
		mov p0,a
		sjmp ana
	ikinciButonBasildi:
		mov a , #00001111b
		anl a , p3 //low nibble sifirlandi.	
		acall ucleCarp
		mov p0,a
		sjmp ana
		
	ikiyleCarp:
		mov b , #2h
		mul AB
		ret
		
	ucleCarp:
		mov b , #3h
		mul AB
		ret
end
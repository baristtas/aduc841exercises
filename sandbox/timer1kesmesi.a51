#include "aduc841.h"

//bu program p3.5'e iki kere basilinca timer1 kesmesine girer ve p3.7'yi toggle eder.

org 0000h
sjmp ayar
org 001bh //ayarladigimiz interrupt bu program hafiza adresine atlatacak.
	sjmp timer1kesme

	ayar:
		mov tmod , #01010000b
		mov dptr , #65534d
		mov TL1, dpl
		mov TH1, dph
		setb ea
		setb et1
		setb tr1 //p3.5'i sayar.
	
	main:sjmp main
	
	timer1kesme://timer flag kendi sifirlanir.
		cpl p3.7
		mov tl1 , dpl
		mov th1 , dph
		
		reti
end

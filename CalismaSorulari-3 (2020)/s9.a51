#include "aduc841.h"

//9:P2-P3= isleminin sonucu pozitif ise p1.1=5v yapiniz aksi takdirde p1.2=5v yapiniz.(P2 ve P3 portlardir.)

//NOT: BU SORUNUN COZUMU ICIME HIC SINMEDI. KESINLIKLE DAHA KISA BIR COZUMU VARDIR. SINAVA AZ KALDIGI ICIN BASKA COZUMLERI DENEMEDIM
//SIZE BAKMANIZI ONERIRIM.
org 0000h
	X:	//pozitif degilken burada
		clr c
		mov a , p2
		mov r0, p3
		subb a , r0
		jnc Z	//carry sifirsa yani p2-p3 negatif degilse Z'ye atla
		setb p1.2
		clr p1.1
		sjmp X //negatifken tekrar X'e donecek
	Z:
		cjne a,#00h,Y //p2-p3 islemi sifir degilse Y'ye git.
		setb p1.2
		clr p1.1
		sjmp X
	
	Y:  //pozitifken girecek
		clr p1.2
		setb p1.1
		sjmp X
end
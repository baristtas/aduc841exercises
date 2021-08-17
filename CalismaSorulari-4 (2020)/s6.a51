#include "aduc841.h"
org 0000h
	sjmp ayar
	
	ayar:
		nop
	
	basla:
		mov r0 , #9d
		mov dptr , #veritabani
	X:
		mov a , r0
		movc a, @a+dptr
		mov p0 , a
		djnz r0 , X
//a sikkinin bitisi

//b sikkinin baslangici
	setb psw.4 //ilk bankta kolay islem yapmak icin bank2ye gectim.
	mov r0 , #09d //djnz ile ileri saymak icin ramle dolayli adresleme yapacagim. (soruda istiyor)
	mov r1 , #00h
	Y:
		mov @r0 , 11h // r0'in gosterdigi adrese r1'i bas
		inc 11h		  // r1'i bir artir
		dec r0		  // r0i azalt
		cjne r1,#0Ah , Y // ram hazirlandi
	
		mov r0 , #9d
		mov dptr , #veritabani
	bsikki:
		mov a , @r0
		movc a, @a+dptr
		mov p0 , a
		djnz r0 , bsikki
		
	sjmp basla
//b sikki bitisi

	veritabani: db 19d,8d,17d,6d,15d,4d,13d,2d,11d,0d
end
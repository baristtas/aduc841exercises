#include "aduc841.h"

org 0000h
	sjmp tekIndisliyeBasla
	
	tekIndisliyeBasla:
		acall ayar
		mov r0 , #8d
		
	X: //bu etiketin icindekiler tek indislileri toplar.
		mov a , r0
		movc a, @a+dptr
		add a , b
		mov b , a
		cjne r0,#02h,tiBasaDondur
		sjmp tekIndisliyiBitir
	
	tiBasaDondur:
		dec r0
		djnz r0 , X
	
	tekIndisliyiBitir:
		dec r0
		dec r0
		mov a , r0
		movc a, @a+dptr
		add a , b
		mov b , a
		mov r7 , a
		sjmp ciftIndisliyeBasla
		
	ciftIndisliyeBasla:
		acall ayar
		Y:
		mov a , r0
		movc a, @a+dptr
		add a , b
		mov b , a
		cjne r0,#01h,ciBasaDondur
		sjmp ciftIndisliyiBitir
	
	ciBasaDondur:
		dec r0
		djnz r0 , Y
		
	ciftIndisliyiBitir:
		mov r6 , a
		nop
	
	mov a , r7
	subb a , r6
	mov p0 , #00h
	jc negatif
	setb p0.1
	sjmp infLoop
	
	negatif:
		setb p0.2
	infLoop:
		nop
		sjmp infLoop
		
		
	ayar: //altprogram olarak tanimladim cunku iki sik icin de tekrar ayar yapmam gerekiyor.
		mov r0 , #9d
		mov b , #00h
		mov dptr , #veritabani
		ret
			
	veritabani: db 19d,8d,17d,6d,15d,4d,13d,2d,11d,0d
end
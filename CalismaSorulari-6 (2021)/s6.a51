#include <aduc841.h>

org 0000h
	sjmp ayar

org 000bh
	sjmp timer0kesmesi
	
ayar:
	mov r0 , #9h
	mov r1 , #168d
	mov tmod , #00000001b
	mov th0 , #00h
	mov tl0 , #00h
	setb ea
	setb et0
	mov dptr , #tablo
	mov r2 , #9h
	setb tr0
	
main:
	setb tr0
	cjne r1 , #00h , main
	clr tr0
	mov r1 , #168d
	mov dptr , #tablo
	mov a , r2
	movc a , @a+dptr
	mov p0 , a
	dec r2
	mov th0 , #00h
	mov tl0 , #00h
	cjne r2 , #00h , main
	mov a , #00h
	movc a , @a+dptr
	mov p0 , a
	mov r2 , #9h
	mov th0 , #00h
	mov tl0 , #00h
	sjmp main
	
timer0kesmesi:
	dec r1
	mov th0 , #00h
	mov tl0 , #00h
	reti
	
	tablo: db 1d, 2d, 3d, 5d, 8d, 13d, 8d, 5d, 3d, 1d
		
end
	
	
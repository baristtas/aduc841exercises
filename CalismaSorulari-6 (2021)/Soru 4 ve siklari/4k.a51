#include <aduc841.h>
//201 kere 65536 sayarak 2 saniye olacak.

org 0000h
	sjmp ayar

org 0003h
	sjmp hariciKesme0

org 000bh
	sjmp timer0kesmesi

org 001bh
	sjmp timer1kesmesi


ayar:
	mov r0 , #55d
	mov tmod , #00010110b
	mov th0 , #56d
	mov tl0 , #56d
	mov th1 , #00h
	mov tl1 , #00h
	setb ea
	setb ex0
	setb it0
	setb et0 //timer0 kesmesi aktif
	setb et1 //timer1 kesmesi aktif
	setb tr0 //timer0 baslatildi
	sjmp main

main:sjmp main
	
hariciKesme0:
	reti
	
timer0kesmesi:
	setb p1.0
	Y:
		setb tr1
		jnb tf1 , Y
		djnz r0 , Y
		clr tr1
		clr tf1
		clr p1.0
		mov th1 , #00h
		mov tl1 , #00h
		mov r0 , #55d
	reti

timer1kesmesi:
	clr tr1
	mov th1 , #00h
	mov tl1 , #00h
	reti
end
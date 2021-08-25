#include <aduc841.h>
org 0000h
	sjmp ayar

org 0003h
	sjmp hariciint

org 000Bh
	sjmp kesmetimer

ayar:
	clr p1.0 //ledi sondur
	setb ea
	setb ex0
	setb it0 //harici kesme ayar bitti.
	setb et0 //timer0 kesmesi acildi
	mov tmod , #00000110b //timer0 8bit mod.
	mov dph , #56d
	mov dpl , #56d
	mov th0 , dph
	mov tl0 , dpl
	setb tr0 //timer baslat

main: sjmp main

hariciint:
	setb p1.0
	clr p1.0
	setb p1.0
	clr p1.0
	reti

kesmetimer:
	setb p1.0
	reti

end
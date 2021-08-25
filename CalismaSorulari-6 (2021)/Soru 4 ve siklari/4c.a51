#include "aduc841.h"

org 0000h
sjmp ayar

org 0003h
	sjmp haricikesme0
ayar:
	setb ea
	setb ex0
	setb it0
	sjmp main
	

main:
	clr p1.0
	mov r0 , #100d
	X: jb p3.4 , X
	Y: jnb p3.4 , Y
	djnz r0 , X
	setb p1.0
	sjmp main
	
haricikesme0:
	nop
	clr p1.0
	setb p1.0
	clr p1.0
	setb p1.0
	clr p1.0
	reti
end

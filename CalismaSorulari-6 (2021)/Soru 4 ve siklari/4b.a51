#include "aduc841.h"

org 0000h
sjmp ayar


ayar:
	setb ea
	setb ex0
	setb it0
	sjmp main
	

main:
	clr p1.0
	mov r0 , #100d
	
	X: jb p3.4 , z
	Y: jnb p3.4 , Y
	dec r0
	cjne r0 , #00h , X
	setb p1.0
	nop
	nop
	nop
	sjmp main
	Z: jb p3.2 , X
	dz: jnb p3.2 , dz
		clr p1.0
		setb p1.0
		clr p1.0
		setb p1.0
		clr p1.0
		sjmp X
	djnz r0 , X
	setb p1.0
	sjmp main
	

end

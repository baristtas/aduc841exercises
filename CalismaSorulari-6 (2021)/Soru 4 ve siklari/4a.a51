#include "aduc841.h"

org 0000h
	clr p1.0
	mov r0 , #100d
	X: jb p3.4 , X
	Y: jnb p3.4 , Y
	djnz r0 , X
	setb p1.0
end

#include "aduc841.h"

org 0000h
	mov r0 , #2h
	mov p0 , #00h
	
	ana:
	X:jb p1.0 , X
	Y:jnb p1.0 , Y
	dec r0
	cjne r0,#00h,ana
	setb p0.0
	nop
end
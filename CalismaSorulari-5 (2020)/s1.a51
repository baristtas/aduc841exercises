#include "aduc841.h"

org 0000h
	mov p0 , #00h //ledler sifirlandi.
	x: jb p1.0 , x
	y: jnb p1.0 , y
	setb p0.0
	nop
end
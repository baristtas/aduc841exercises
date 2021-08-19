#include "aduc841.h"

//kusursuz çalisiyor.

org 0000h
	X:
	mov p0 , #00h
	jb p1.0 , X
	
	Y:
	jb p1.0 , X //buton birakildiysa X'e dondur.
	jb p1.1 , Y
	
	Z:
	jb p1.0 , X //buton birakildiysa X'e dondur.
	jnb p1.1 , Z
	
	setb p0.0
	jnb p1.0 , Z //buton birakilmadiysa ledi yanik tutacaktir.
	clr p0.0
	sjmp X
end
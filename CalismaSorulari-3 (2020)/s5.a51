#include "aduc841.h"

org 0000h
	mov r0, #1fh
	mov r1, #30h
	
	X:
		mov a , r0
		add a,r1
		mov @r0,a
		dec r0
		cjne r0,#0fh,X
end
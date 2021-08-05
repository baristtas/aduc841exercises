#include "aduc841.h"

org 0000h
	
	mov r0, #0fh
	
	x:

	mov a, 00h
	add a, 00h

	mov @r0,a
	djnz r0,x
	nop
end
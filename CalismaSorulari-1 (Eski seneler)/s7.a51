#include "aduc841.h"

org 0000h
	mov r0,#1eh
	mov 1fh,#0fh

	
	x:
	mov @r0,1fh
	dec 1fh
	dec r0
	djnz r0, x
	
	nop
	
end
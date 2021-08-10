#include "aduc841.h"

org 0000h
	mov r0,#04h
	mov r6,#03h
	x:
		mov @r0,#3h
		mov a, @r0
		swap a
		add a,r6
		mov @r0,a
		inc r6
		djnz r0, x
end
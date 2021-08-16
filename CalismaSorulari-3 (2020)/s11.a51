#include "aduc841.h"

org 0000h
	mov r0,#10h
	mov r1,#10d
	X:
		mov @r0,01h
		inc r0
		djnz r1,x
		
	//ardindan
	mov r0,#10h
	Y:
		add a, @r0
		inc r0
		cjne r0,#1Ah,Y
end
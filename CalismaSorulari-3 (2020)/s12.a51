#include "aduc841.h"

org 0000h
	mov r0 , #08h
	mov b , #2h
	X:
		mov b , #2h
		mov a , r0
		inc a
		MUL AB
		mov @r0 , a
		djnz r0 , X
		mov r0 ,#02h
	Y:	
		sjmp Y
end
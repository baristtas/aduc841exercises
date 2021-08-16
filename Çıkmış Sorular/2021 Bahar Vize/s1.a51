#include "aduc841.h"

org 0000h
	mov r0,#09h
	X:
		mov B , #7h
		mov A , r0
		MUL AB
		mov @r0 , a
		djnz r0,X
end
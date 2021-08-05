#include "aduc841.h"

org 0000h
	mov r0,#10h
	
	x:
	mov @r0,00h
	add a,r0
	djnz r0,x
end
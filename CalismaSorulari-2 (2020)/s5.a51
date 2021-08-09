#include "aduc841.h"

org 0000h
	mov r0, #10d
	
	x:
	add a,r0
	mov r1,a
	djnz r0,x
end
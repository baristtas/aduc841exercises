#include "aduc841.h"

org 0000h
	mov r0,#10h
	setb psw.4
	mov r1,#100d
	clr psw.4
	
	x:
	mov @r0,11h
	dec 11h
	djnz r0, x
	mov 11h,#00h
end
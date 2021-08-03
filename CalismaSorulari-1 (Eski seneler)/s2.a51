#include "aduc841.h"




org 0000h
	mov r0, #35d
	setb psw.4
	mov r0,#0fh
	
	x:
	mov @r0,00h
	dec 00h
	djnz r0, x
end
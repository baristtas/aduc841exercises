#include "aduc841.h"

org 0000h
	mov r0,#0fh
	mov a, #00010000b
	orl a, PSW
	mov psw,a //bank2
	
	mov r0,#21d
	
	clr rs1
	x:
	mov @r0, 10h
	inc 10h
	djnz 00h, x
	
	clr rs0
	setb rs1
	mov r0,#00h
	
end
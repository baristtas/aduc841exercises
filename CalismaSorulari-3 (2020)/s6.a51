#include "aduc841.h"

org 0000h
	setb psw.3 //10d adresi için bank1'e gecildi
	mov r0, #1fh
	mov a, #70d
	
	X:
		mov @r0,a
		subb a,#2d
		mov r2 , a
		dec r0
		cjne r2, #38d, X
end
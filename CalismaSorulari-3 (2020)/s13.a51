#include "aduc841.h"

org 0000h
	//r0 adres register'i , r1 carpim registeri olarak kullandim.
	mov r0,#10h
	mov r1,#01h
	ucluk:
		mov b,#3h
		mov a,r1
		MUL AB
		mov @r0,a
		inc r1
		inc r0
		cjne r0,#20h,ucluk
	
	mov r0,#1Ah
	mov r1,#01h
	dortluk:
		mov b,#4h
		mov a,r1
		MUL AB
		mov @r0,a
		inc r1
		inc r0
		cjne r0,#24h,dortluk
		
	mov r0,#24h
	mov r1,#01h
	beslik:
		mov b,#5h
		mov a,r1
		MUL AB
		mov @r0,a
		inc r1
		inc r0
		cjne r0,#2Eh,beslik
			
end
#include "aduc841.h"

org 0000h
	mov r0,#04h
	mov r6,#03h
	x:
		mov @r0,#3h
		mov a, @r0
		swap a
		add a,r6
		mov @r0,a
		inc r6
		djnz r0, x
		//tablo olusturuldu
		
		mov r5,#0h
		
		mov a,r4
		swap a
		anl a,#0fh
		add a,r5
		mov r5,a
		
		mov a,r3
		anl a,#0fh
		add a,r5
		mov r5,a
		
		mov a,r2
		swap a
		anl a,#0fh
		add a,r5
		mov r5,a
		
		mov a,r1
		anl a,#0fh
		add a,r5
		mov r5,a	

		mov a,r0
		swap a
		anl a,#0fh
		add a,r5
		mov r5,a

end
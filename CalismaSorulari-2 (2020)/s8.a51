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
	
	mov p0,#00h
	mov r0,#04h
	y:
		mov a,@r0
		anl a,#0fh
		//add a,p0 //pin muhabbetinden dolayi bir sikinti var bu ve alt satirda. bunun yerine registera alip porta basacagim.
		//mov p0,a
		add a,r7
		mov r7,a
		mov p0,r7
		djnz r0,y
		
end
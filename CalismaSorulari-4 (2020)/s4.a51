#include "aduc841.h"
org 0000h
	sjmp ayar
	
	ayar:
		nop
	
	basla:
		mov r0 , #04h
		mov a , #33h
		
		sjmp basla
		
	veritabani: db 19d,8d,17d,6d,15d,4d,13d,2d,11d,0d
end
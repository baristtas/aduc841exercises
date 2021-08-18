#include "aduc841.h"

org 0000h
	sjmp ayar
	
	ayar:
		nop
	
	basla:
		mov r0 , #9d
		mov dptr , #veritabani
	X:
		mov a , r0
		movc a, @a+dptr
		mov p0 , a
		cjne r0,#01h ,basaDondur //bu denetimi bug'a girmemesi icin yaptik.  r0==1'ken iki kere eksilttigimiz icin  0xff'ten tekrar donuyor ve bug oluyor.
		nop
		sjmp basla
		basaDondur:
			dec r0
			djnz r0 , X
	sjmp basla
	veritabani: db 19h,8h,17h,6h,15h,4h,13h,2h,11h,0h
end
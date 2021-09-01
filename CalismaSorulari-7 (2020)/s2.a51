#include <aduc841.h>

org 0000h
sjmp ayar


//55296 sayacagiz. dptr 10239 eklenecek.
ayar:
	mov adccon1 , #10110000b
	mov adccon2 , #00000000b
	mov tmod , #00000001b
	mov dptr , #10239
	mov th0 , dph
	mov tl0 , dpl
	sjmp ana
	
ana:
	setb tr0
	jnb tf0 , $
	clr tr0
	setb sconv
	jnb adci , $
	mov r0 , adcdatah
	mov r1 , adcdatal
	clr adci
	clr tf0
	cpl p1.0
	mov th0 , dph
	mov tl0 , dpl
	sjmp ana
	
end
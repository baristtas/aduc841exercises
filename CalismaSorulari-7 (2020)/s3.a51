#include <aduc841.h>

org 0000h
sjmp ayar


//168 kere 65536 sayacagiz. 
ayar:
	mov adccon1 , #10110000b
	mov adccon2 , #00000000b
	mov tmod , #00000001b
	mov dptr , #0000h
	mov th0 , dph
	mov tl0 , dpl
	mov r2 , #87d
	sjmp ana
	
ana:
	setb tr0
	jnb tf0 , $
	inc r2
	clr tr0
	clr tf0
	mov th0 , dph
	mov tl0 , dpl
	cjne r2 , #255d , ana
	mov r2 , #87d
	cpl p1.0
	setb sconv
	jnb adci , $
	mov r0 , adcdatah
	mov r1 , adcdatal
	clr adci
	sjmp ana
	
end
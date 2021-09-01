#include <aduc841.h>

org 0000h
sjmp ayar

org 000bh
sjmp timer0kesmesi

//55296 sayilacak.
ayar:
	mov tmod , #00000001b
	mov dptr , #0000h
	mov th0 , dph
	mov tl0 , dpl
	mov adccon1 , #10110000b
	mov adccon2 , #00000001b
	setb ea
	setb et0
	mov r2 , #86d
	sjmp ana
	
ana:
	setb tr0
	cjne r2 , #255d , ana
	clr tr0
	mov r2 , #86d
	setb sconv
	jnb adci , $
	mov r0 , adcdatah
	mov r1 , adcdatal
	cpl p1.0
	clr adci
	sjmp ana
	
	
timer0kesmesi:
	inc r2
	mov th0 , dph
	mov tl0 , dpl
	reti
end
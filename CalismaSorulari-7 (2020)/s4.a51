#include <aduc841.h>

org 0000h
sjmp ayar

org 000bh
sjmp timer0kesmesi

//55296 sayilacak.
ayar:
	mov tmod , #00000001b
	mov dptr , #10240d
	mov th0 , dph
	mov tl0 , dpl
	mov adccon1 , #10110000b
	mov adccon2 , #00000001b
	setb ea
	setb et0
	setb tr0
	sjmp ana
	
ana:sjmp $	
	
	
timer0kesmesi:
	setb sconv
	jnb adci , $
	mov r0 , adcdatah
	mov r1 , adcdatal
	clr adci
	reti
end
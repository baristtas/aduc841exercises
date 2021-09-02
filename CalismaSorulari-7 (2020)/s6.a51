#include <aduc841.h>

org 0000h
sjmp ayar

org 000bh
sjmp timer0kesmesi

org 0033h
sjmp adckesmesi

//55296 sayilacak.
ayar:
	mov tmod , #00000001b //timer 0 169 defada 1sn olacak.
	mov dptr , #0000h
	mov th0 , dph
	mov tl0 , dpl
	mov r2 , #86d
	mov adccon1 , #10110000b
	mov adccon2 , #00000001b
	setb ea
	setb eadc
	setb et0
	setb tr0
	
ana: 
	cjne r2 , #255d , ana
	mov r2 , #86d
	cpl p1.0 //bir saniyeyi görsel teyit icin
	setb sconv
	sjmp ana
	
	
timer0kesmesi:
	inc r2
	mov th0 , dph
	mov tl0 , dpl
	reti
	
adckesmesi:
	mov r0 , adcdatah
	mov r1 , adcdatal
	reti
	
end
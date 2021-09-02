#include <aduc841.h>

org 0000h
	sjmp ayar

org 0033h
	sjmp adckesmesi
	
	
ayar:
	mov adccon1 , #10110000b
	mov adccon2 , #00000000b
	setb ea
	setb eadc
	setb sconv
	sjmp ana
	
ana:sjmp ana

adckesmesi:
	mov r0 , adcdatah
	mov r1 , adcdatal
	clr adci
	cpl cs0
	setb sconv
	jnb adci , $
	mov r2 , adcdatah
	mov r3 , adcdatal
	cpl cs0
	clr adci
	setb sconv
	reti
end
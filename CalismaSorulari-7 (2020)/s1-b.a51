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
	setb cconv
	sjmp ana
	
ana: sjmp $
	
adckesmesi:
	mov r0 , adcdatah
	mov r1 , adcdatal
	reti
end
	
	
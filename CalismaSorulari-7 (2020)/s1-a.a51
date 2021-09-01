#include <aduc841.h>
org 0000h
sjmp ayar

ayar:
	mov adccon1 , #10110000b
	mov adccon2 , #00000000b
	setb cconv
	sjmp ana
	
ana:
	jnb adci , $
	clr adci
	mov r0 , adcdatah
	mov r1 , adcdatal
	sjmp ana
end
	
	
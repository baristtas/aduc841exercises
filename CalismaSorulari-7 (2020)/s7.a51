#include <aduc841.h>

org 0000h
sjmp ayar

ayar:
	mov adccon1 , #10110000b

ana:
	mov adccon2 , #00000000b
	setb sconv
	jnb adci , $
	mov r0 , adcdatah
	mov r1 , adcdatal
	mov adccon2 , #00000001b
	setb sconv
	jnb adci , $
	mov r2 , adcdatah
	mov r1 , adcdatal
	sjmp ana

end
#include <aduc841.h>
org 0000h
sjmp ayar

org 0033h
sjmp adckesmesi

ayar:
	mov adccon1 , #10110000b //mdi yani enerjilendirme = 1 , dahili referans, ck1 ck0 = 1 1, aq1 aq0 = 0 0, t2c=0 , exc distan baslat 0
	mov adccon2 , #00000010b //kanal 2, sconv = 0 , cconv = 0 , adci = 0
	setb ea
	setb eadc
	sjmp main

main:	
	setb cconv //cevrimi baslattik.
	
	x: sjmp x

adckesmesi:
	mov r0 , adcdatal
	mov r1 , adcdatah
reti

end
	
	
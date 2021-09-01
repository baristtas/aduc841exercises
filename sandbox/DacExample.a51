#include <aduc841.h>
org 0000h
sjmp ayar

ayar:
	mov adccon1 , #10000000b //dahili referans kullanacagimiz icin ADC'yi enerjilendirdik.
	mov daccon , #00001101b // 12bit modunda , dac0, dahili referans , sync off , dac1 off
	mov dptr , #2048d //1.25V okuyacagiz.
	mov dac0h , dph
	mov dac0l , dpl
	
	sjmp $ //oldugu yere atar
end
	
	
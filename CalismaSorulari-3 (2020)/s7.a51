#include "aduc841.h"

//7: P1 bagli 4 buton vardir (P1.0-P1.1-P1.2-P1.3). (Butonlara basinca, pine gelen degerler 0 olmaktadir.) Dolasiyla hiçbir 
//pine basilmamissa P1’den gelen deger 15 olmaktadir. Yüksek Nibble’dan gelen veriler maskelemeyle sifirlanmalidir. 
//P1’den bu sekilde gelecek verinin 1’den gelen degere kadar toplamini p3’te gözlemleyiniz. (Örnegin porttan gelen veri 
//10 ise 1’den 10’a kadar olan sayilarin toplamini p3’te gözlemleyiniz.)

org 0000h
	mov a , p1
	anl a , #0fh
	mov r0 , a
	mov a , #00h
	X:
		add a,r0
		djnz r0,X
	mov p3 , a
end
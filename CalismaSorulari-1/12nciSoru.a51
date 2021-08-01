#include "aduc841.h"

org 0000h
	
	mov 20h,#0ffh
	Clr c
	Mov 07h,c
	
//12- Kodlarinin ardindan degisiklik yapilan kaydediciyi belirleyin. Kaydedicide olusan son deger ne olur. (Keil’da kodu 
//yazmadan tespit ederek Keil’da dogrulayin)

//Cozum: 20h bit bolgesindedir. ff yazdirdigimizda 20h'e bir baytlik 1 yazilir. yani 20h(bayt adresi)=(1111 1111) olur.
//clr c bitiyle c = 0 yapilir. Ardindan 07h adresine basilir, yani sifirlanir. 07h adresli bit, 20h adresli baytin 
//son bitidir. Son durumda 20h adresli baytta yani, 20h(bayt adresi) = (0111 1111) olur.
//(0111 1111)binary = (7F)hexadecimal

end
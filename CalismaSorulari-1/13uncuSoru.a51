#include "aduc841.h"
//13.
//mov 2fh,#0fh
//Mov 21h,#00h
//Mov c, 78h
//Mov 0fh,c
//Son satirda islem yapilan kaydediciyi ve kaydedicide olusan son degeri belirleyin. (Keil’da kodu yazmadan tespit ederek Keil’da dogrulayin)


//Cozum: 0fh biti, 21h adresli baytin son bitidir.
//78h biti, 2f baytinin ilk bitidir.

org 0000h
	
	mov 2fh,#0fh //0000 1111 basildi. yani 78h biti su anda "1".
	Mov 21h,#00h //21h tamamen sifir
	Mov c, 78h	 //c bitine 1 basildi.
	Mov 0fh,c	 //0fh bitine de 1 basilmis oldu. 0fh 21h baytinin son bitidir. yani 21h'de (1000 0000)b = 80h görülecek.

end
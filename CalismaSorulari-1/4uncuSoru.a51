#include "aduc841.h"

//MN �grenci numaranizin son iki hanesi olmak �zere,
//MNh adresine #NMh degerini yaziniz
//MNh adresine NMh adresindeki degeri yaziniz

org 0000h
	
	
		//mov 78h,#77h //debuggerda kolay gormek acisindan 78h'e 77 yazildi;
		//mov 79h,78h //ardindan 78h adresindeki deger 79h'e basildi
	
	//�devde istenen cevap asagida:
	mov 78h,#78h
	mov 78h,78h
	
	
	
end
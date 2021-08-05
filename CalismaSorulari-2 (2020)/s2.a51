#include "aduc841.h"


//2. (Bir kâgitta yap!) 10h+0fh+0eh adreslerindeki verileri toplayan kodu yaziniz. Akümülatörde (a) 
//olusacak degeri ve c degerini belirleyiniz. (100d+99d+98d topla. Sonuç a ve c de olacak. Bunlarin ne 
//oldugunu keil’de program yazmadan belirle )
//(Keil’de yap!) Ardindan Tablo 1’de olusturdugunuz verilerin bilinmedigi varsayilarak 10h+0fh+0eh 
//adreslerindeki verileri toplayan kodu keil’de yazip kosturunuz. Olusan a degeri ve c bitini sizin 
//hesapladiginiz deger ile karsilastiriniz

org 0000h
	mov r0,#10h
	mov 1fh,#100d
	
	x:
	mov @r0,1fh
	dec 1fh
	djnz r0,x
	
	mov a,10h
	mov r0,0fh
	mov r1,0eh
	add a,r0
	add a,r1 //100d + 99d + 98 d = 297d olacak. yani tasacak. a=41d, c=1 diye bekliyorum.
end
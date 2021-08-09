#include "aduc841.h"


//4. r0=#5d degeri veriniz. DJNZ komutu kullanarak döngü ile 5*4*3*2*1 islemini yapiniz ve çarpim 
//degerini p0’da gözlemleyiniz.


org 0000h
	
	mov r0 , #5d
	mov b , #01d
	
	x:
	mov a , r0
	MUL AB
	mov b , a
	mov p0, b
	djnz r0 , x
	
end
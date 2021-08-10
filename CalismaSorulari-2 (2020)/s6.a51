#include "aduc841.h"

//        hn ln
//R0=#12h 1   2
//R1=#34h 3   4

//R0’in HN’si + R1’in LN’sini toplayip p0 da gözlemleyiniz. P0=1+4=5 olacak
//R0’in LN’si + R1’in HN’sini toplayip p1 da gözlemleyiniz. P1=2+3=5 olacak.


org 0000h
	//a sikki baslangic
	mov r0,#12h
	mov r1,#34h
	mov a,r0
	
	swap a //nibblelar yer degistirdi.
	anl a,#0fh //high nibble sifirlandi
	mov r0,a //r0'in high nibble'i sifirlandi ve tekrardan r0'a basildi.
	
	mov a,r1
	anl a,#0fh//high nibble sifirlandi.
	mov r1,a// hazirlanan deger yerine koyuldu
	
	add a,r0
	mov p0,a
	//a sikki bitis
	
	//b sikki baslangic
	setb rs0 //bank1
	mov r0,#12h
	mov r1,#34h
	mov a,r0
	
	//r0'in high nibble'i sifirlanacak
	anl a,#0fh
	mov r0,a
	
	//r1'in hn lazim. swaplendikten sonra hn sifirlanacak.
	mov a,r1
	swap a
	anl a,#0fh //r1 hazirlandi
	mov r1,a
	
	
	add a,r0
	mov p1,a
	
	
end
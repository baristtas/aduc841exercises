#include "aduc841.h"

org 0000h
//e sikki baslangic
	mov r0 , #05h
	mov a , #00h
	
	X:
		add a , r0
		djnz r0 , x
	mov p0 , a
//e sikki bitis
	
//f sikki baslangic
	mov r0 , #05h
	mov a , #01h
	y:
		mov b, r0
		mul AB
		djnz r0 , y
	mov p0 , a
//f sikki bitisi
	
	
	mov r1, #00h //temizlik imandandir
	mov a, #00h
	mov b,#00h
	clr c
	
	
//a sikki baslangic
	
	//cjne ikisini karsilastirir esit degilse etikete atar. cjne x,y,etiket
	//cjne -> compare and jump if not equal
	
	mov r0,#5d
	mov a,#01d
	nop
	
	z:
		mov b , r0
		mul AB
		dec r0
		cjne r0,#00h,Z
	mov p0 , a
//a sikki bitis
	
	mov r1, #00h //temizlik imandandir
	mov a, #00h
	mov b,#00h
	clr c
	
//b sikki baslangic
	mov r0, #05h
	mov a, #00h
	
	bsikki:
		add A,r0
		dec r0
		cjne r0,#00h,bsikki
	mov p0 , a
//b sikki bitis
	
	mov r1, #00h //temizlik imandandir
	mov a, #00h
	mov b,#00h
	clr c

//c sikki baslangic
	mov r0 , #1d
	mov a , #01d
	
	csikki:
		mov b , r0
		mul AB
		inc r0
		cjne r0,#06h,csikki
	mov p0 , a
//c sikki bitis

	mov r1, #00h //temizlik imandandir
	mov a, #00h
	mov b,#00h
	clr c
	
//d sikki baslangic
	mov r0,#01d
	mov a,#00d
	
	dsikki:
		add a,r0
		inc r0
		cjne r0,#06d,dsikki
	mov p0 , a
end
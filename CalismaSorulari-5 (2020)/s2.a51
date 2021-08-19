#include "aduc841.h"

org 0000h
	//bu soru interruptlarla yapilsa cok daha iyi olur.
	
	mov p0 , #00h //ledler sonduruldu
	
	X:jnb p1.0 , durum1
	Y:jnb p1.1 , durum2
	sjmp X //iki butondan biri basilana kadar iki butonu da deneyecek.
	
	durum1:
		jnb p1.0 , durum1 //butonun birakilmasini bekliyor
		sjmp led0yak //buton birakilinca ledi yakip tekrar ana program loopuna donecek.

	durum2: 
		jnb p1.1 , durum2
		sjmp led1yak
		
	led0yak:
		setb p0.0
		clr p0.1
		sjmp X
	
	led1yak:
		setb p0.1
		clr p0.0
		sjmp X
end
#include "aduc841.h"

org 0000h
sjmp ayar
org 0003h //ayarladigimiz interrupt bu program hafiza adresine atlatacak.
	sjmp haricikesme0 
	ayar:
		setb ea //enable all
		setb it0//düsen kenar
		setb ex0 //p3.2 pini
		
	x: sjmp x
	
	haricikesme0:
		inc r0
		cjne r0,#3h , y
		cpl p3.7
		mov r0,#00h
		y:reti
end

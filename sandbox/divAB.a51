#include "aduc841.h"

org 0000h
	mov a,#20d
	mov b,#3d
	
	DIV AB
	mov r0,a //6 kere tam bolundu
	mov r1,b //bolumdan kalan 2 oldu
end
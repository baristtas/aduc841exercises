#include "aduc841.h"

org 0000h
	Y:
	mov a,#01h
	JNB P1.0,X
	sjmp Y
	
	X:
	mov p3,a
	rl a
	sjmp X
end
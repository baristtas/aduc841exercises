#include "aduc841.h"

org 0000h
	mov r0,#10h
	
	x:
	mov @r0,00h
	djnz r0,x
end
#include "aduc841.h"

//15. T�m ram kaydedicilerinin i�erigine 33h adres degerini atayin.

org 0000h
	
	mov r0, #7fh
	
	x:
	mov @r0, #33h
	djnz r0, x
	mov r0, 33h
	nop
end
#include "aduc841.h"

//15. T�m ram kaydedicilerinin i�erigine kendi adres degerini atayin.

org 0000h
	
	mov r0, #7fh
	
	x:
	mov @r0, 00h
	djnz r0, x
	
end
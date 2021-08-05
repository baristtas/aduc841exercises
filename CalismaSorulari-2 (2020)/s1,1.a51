#include "aduc841.h"

org 0000h
	mov r0,#10h
	mov 1fh,#100d
	
	x:
	mov @r0,1fh
	dec 1fh
	djnz r0,x
end
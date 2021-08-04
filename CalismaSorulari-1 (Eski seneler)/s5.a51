#include "aduc841.h"

org 0000h
	mov 22h,#00h 
	mov 21h,#10101010b 
	
	mov c, 09h
	mov 12h,c
	
	mov c, 0bh
	mov 15h,c
	
	mov c, 0dh
	mov 13h, c
	
	mov c, 0fh
	mov 16h, c
	
	//once birler tasindi. simdi sifirlarin tasinmasina gerek yok ama tasinmasi isteniyor.
	
	mov c,08h
	mov 10h,c
	
	mov c,0ah
	mov 11h,c
	
	mov c, 0ch
	mov 14h,c
	
	mov c,0eh
	mov 17,c
end
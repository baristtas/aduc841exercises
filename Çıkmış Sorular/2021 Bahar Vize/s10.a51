#include "aduc841.h"

org 0000h

basla:
	mov 08h,#57h
	mov r0,#39h
	mov PSW,#11010011b
	mov 57h,#23h
	
	//maskelemeyle gececegiz. psw.3 = 1 , psw.4 = 0 olmali.
	mov a,#11101111b // dorduncu bit sifirlandi
	anl a , psw
	mov psw , a
	
	mov a,#00001000b
	orl a , psw
	mov psw , a //ucuncu bit birlendi
	nop
end
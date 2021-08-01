#include "aduc841.h"

//10. mov 08h,#7eh kodunun islenmesinin ardindan bank1’e ait r0 kullanilarak dolayli adresleme ile 7eh 
//adresine 44h degerini yaziniz.



org 0000h
	mov 08h,#7eh
	
	clr rs1
	setb rs0 //bank1
	
	mov r1,#44h
	mov @r0,09h
end
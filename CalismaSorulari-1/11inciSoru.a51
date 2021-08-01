#include "aduc841.h"

//11. Bir önceki soruda yazdiginiz son satira mov r6,#99h yazilirsa hangi adreste islem yapilmis olur.




org 0000h
	mov 08h,#7eh
	
	clr rs1
	setb rs0 //bank1
	
	mov r1,#44h
	mov @r0,09h
	
	mov r6,#99h //yazilirsa, bank1'in 6.baytina 99h yazilir. yani 0eh adresinde islem yapilmis olunur.
end
#include "aduc841.h"

// 8. mov a,#55h kodunun islenmesinin ardindan dolayli adresleme kullanarak 30h adresine a kaydedicisindeki 
// degeri yaziniz.


org 0000h
	mov a,#55h
	mov r0,#30h
	mov @r0,a
end
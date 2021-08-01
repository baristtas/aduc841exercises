#include "aduc841.h"

//5. Dolayli adresleme kullanarak 55h adresine #33h degerini yaziniz.

org 0000h
	mov r0,#55h
	mov @r0,#33h
end
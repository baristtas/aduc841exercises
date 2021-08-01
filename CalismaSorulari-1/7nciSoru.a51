#include "aduc841.h"

// mov 7fh,#44h kodunun islenmesinin ardindan dolayli adresleme kullanarak 30h adresine 7fh adresindeki 
//degeri yaziniz.

org 0000h
	mov 7fh,#44h
	mov r0,#30h
	mov @r0,7fh
end
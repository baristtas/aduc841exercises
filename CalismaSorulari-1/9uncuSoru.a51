#include "aduc841.h"

//9. mov 7fh,#66h kodunun islenmesinin ardindan dolayli adresleme ile 7fh adresindeki verinin alinip 07h 
//adresine yazilmasini saglayiniz.



org 0000h
	mov 7fh,#66h
	mov r0,#07h
	mov @r0,7fh
end
#include "aduc841.h"

//3. Sirayla 
//Bank3’ün r7 kaydedicisine 77h
// Bank1’in r1 kaydedicisine 11h
// Bank2’in r3 kaydedicisine 33h
// Bank0’in r5 kaydedicisine 55h
// bank islemlerini gerçeklestirerek ilgili kaydedicilere karsiliklarini yazacak asm kodunu yaziniz. Ayni islemi direkt 
// kaydedici adreslerini (Örnek; bank3 r5 adresi yerine =>1dh ) kullanarak bir daha yaziniz.

org 0000h
	clr rs0
	clr rs1 //rs = 00b bank0
	mov r5,#55h
	
	setb rs0 //rs = 01b bank1
	mov r1,#11h
	
	setb rs1 //rs = 11b bank3
	mov r7, #77h
	
	clr rs0 //rs = 10b bank2
	mov r3,#33h
	
end
//Bank0’in r7 kaydedicisine 77h
//? Bank1’in r1 kaydedicisine 11h
//? Bank2’in r3 kaydedicisine 33h
//? Bank3’ün r5 kaydedicisine 55h
//bank islemlerini gerçeklestirerek ilgili kaydedicilere karsiliklarini yazacak asm kodunu yaziniz. Ayni islemi direkt
//kaydedici adreslerini (Örnek; bank3 r5 adresi yerine =>1dh ) kullanarak bir daha yaziniz.
#include "aduc841.h"

org 0000h
	clr rs0
	clr rs1
	//bank 0
	
	mov r7, #77h
	
	setb rs0 //bank 1'e gecis
	mov r1, #11h
	
	clr rs0 
	setb rs1 //rs 10b yapildi
	mov r3,#33h
	
	setb rs0 //rs 11b yapildi
	mov r5,#55h
	//ilk versiyon tamamlandi.
	
	
	
	// simdi rx yerine adreslerle yazacagiz.
	
	//	0 => 00-07
	//  1=> 08-0F
	//  2=>10 - 17
	//  3=>18 - 1F
	
	
	//ikinci versiyon baslangic
	clr rs0
	clr rs1 //bank 0dayiz
	
	mov 07h, #77h
	
	setb rs0 //rs 01b yapildi bank 1'e gecis
	mov 09h, #11h
	
	clr rs0 
	setb rs1 //rs 10b yapildi bank2ye gecis
	mov 13h,#33h
	
	setb rs0 //rs 11b yapildi
	mov 1dh,#55h
	//ikinci versiyon tamamlandi.
	
end
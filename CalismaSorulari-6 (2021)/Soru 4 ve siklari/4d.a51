#include "aduc841.h"
//timer 0'a yazacagim. 16bit modda yapacagim.
org 0000h
	sjmp ayar	

org 0003h
	sjmp haricikesme0
	
org 000bh
	sjmp timer0kesmesi

ayar:
	clr p1.0 //led sonduruldu.
	mov dptr , #55536d //10k sayacak
	mov TMOD , #00000101b //timer0 counter modda p3.4'u sayiyor
	mov th0 , dph
	mov tl0 , dpl
	setb ea
	setb et0 //timer kesmesi hazirlandi
	setb ex0 //hk0
	setb it0 //hk0
	setb tr0 //timer 0 basladi
	sjmp main
	
main: 
	X: JNB TF0 , X
	setb p1.0
	sjmp main



haricikesme0:
	setb p1.0
	clr p1.0
	setb p1.0
	clr p1.0
	reti
end

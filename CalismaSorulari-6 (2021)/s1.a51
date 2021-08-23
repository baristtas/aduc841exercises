#include "aduc841.h"

//kusursuz çalisiyor.

org 0000h
	mov p0 , #00h
	mov tmod , #00000001 //timer 0 , osc mode , mode01
	mov dptr , #10226d // burada 10226 (65535 - 55309)'dan geliyor. 5ms ayarlandi. (55309 x 90.4^-9) = (5 x 10^-3)
	mov tl0 , dpl
	mov th0 , dph
	setb TR0
	X:jnb tf0 , X //eger timer flagi kalkmamissa tekrardan x'e donecek. kalkarsa asagi satirlara inecek ve islemi yapacak.
	clr tf0 //flagi temizle
	cpl p0.0 //p0.0'i toggle et
	mov tl0 , dpl //16 bit modda tekrardan timer'a degerleri girmen lazim. 8 bit modda highdan lowa aliyor onda gerek yok.
	mov th0 , dph
	sjmp X //geri don
end
	
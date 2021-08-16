#include "aduc841.h"
//bu soruda db'e 256 tane sayiyi elle girmek istemeyecegimden dolayi (2*2). degeri database'den çekecek kodu yazdim.
org 0000h
basla:
	mov a,#2d
	mov b,#2d
	MUL AB
	subb a,#01h //84.veriye erismek icin bir cikardik. cunku ilk veri sifirinci veri.
	
	mov dptr,#tablo //tablo adresi dptr'ye
	movc a,@a+dptr //tablonun a + dptr'si a'ya
	nop //zaman gecikmesi icin
	mov r0,a // tablo degerini r0'a cektim
	tablo: db 01d,02d,03d,04d,05d
end
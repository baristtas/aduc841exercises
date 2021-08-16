#include "aduc841.h"

org 0000h
	ana:
		mov r0,#7d
		mov r1,#8d
	
		mov a,r0
		subb a,#4h
		subb a,r1
		jnc X //carry == 0'sa X'e atlar (r0-4h >= r1)
		sjmp Y //carry == 1 ise aksi hal durumuna yollar bizi.
	
	X:
		cjne a,#00h,Y //((r0-4h) - r1) != 0'sa Y'ye atlar
		mov r5,#246d //carry 0 ve ((r0-4h)-r1)> 0 ise bu satira girer.
		sjmp ana
	
	Y://aksi hal durumu
		mov r6,#09d
		sjmp ana
	
end
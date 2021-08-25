#include <aduc841.h>
org 0000h
	sjmp ayar
	
	ayar:
		mov r0 , #50d //0.5sn icin 50 kez calistiracagim
		clr p1.0
		mov tmod , #00010110b
		mov th0 , #56d
		mov tl0 , #56d
		mov th1 , #00h
		mov tl1 , #00h
		setb tr0
		sjmp main
		
	main:
		x:jnb tf0 , Y
		setb p1.0
		setb tr1
			suredongusu:
				tim1:jnb tf1 , tim1
				djnz r0 , suredongusu
				clr p1.0
		y:jb p3.2 , X
		z:jnb p3.2 , z
		setb p1.0
		clr p1.0
		setb p1.0
		clr p1.0
		sjmp main
		
end
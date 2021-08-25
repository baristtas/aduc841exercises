#include <aduc841.h>
org 0000h
	sjmp ayar
	
	ayar:
		clr p1.0
		mov tmod , #00010110b
		mov th0 , #254d
		mov tl0 , #254d
		mov dptr , #32536d
		mov th1 , dph
		mov tl1 , dpl
		setb tr0
		sjmp main
		
	main:
		x:
			jnb tf0 , Y
			setb p1.0
			setb tr1
			tim1:jnb tf1 , tim1
			clr p1.0
			clr tr0
			clr tf1
			clr tf0
		y:jb p3.2 , X
		z:jnb p3.2 , z
		setb p1.0
		clr p1.0
		setb p1.0
		clr p1.0
		sjmp main
		
end
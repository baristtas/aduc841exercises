#include <aduc841.h>

org 0000h
	sjmp ayar

org 000bh
	sjmp tim0kesmesi

org 001bh
	sjmp tim1kesmesi
	
	ayar:
	clr p1.0 //ilk olarak ledi sondurduk
	mov tmod , #00010110b
	mov th0 , #56d
	mov tl0 , #56d
	mov dptr , #19336d
	mov th1 , dph
	mov tl1 , dpl
	setb ea
	setb et0
	setb et1
	setb tr0
	sjmp main
	
	main: 
		x:jb p3.2 , x
		y:jnb p3.2 , y
		setb p1.0
		clr p1.0
		setb p1.0
		clr p1.0
		sjmp main
	
tim0kesmesi:
	setb tr1
	setb p1.0
	reti

tim1kesmesi:
	clr tr0
	mov th1 , dph
	mov tl1 , dpl
	reti

end
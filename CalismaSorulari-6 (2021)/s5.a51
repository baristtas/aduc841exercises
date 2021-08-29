#include <aduc841.h>
//201 kere 65536 sayarak 2 saniye olacak.
//r0'da tur sayisi tutulacak.
//r1'de timer tasmasi sayilacak
org 0000h
	sjmp ayar
	
org 000bh
	sjmp timer0kesmesi
	
//169 kere timer0'i dolduracagim ve 1saniye sayacak.

ayar:
	mov r0 , #101d
	mov tmod , #00000001b
	mov r1 , #201d
	mov dptr , #0000h
	mov th0 , dph
	mov tl0 , dpl
	setb ea
	setb et0

main: 
	isStart:jb p1.4 , isStart
		acall start
	isStop: jb p1.5 , Y
		acall stop
		sjmp main
	Y: cjne r1 , #00h , i
	   sjmp kutuKontrol
	   sjmp isStop
	i:jb p1.0 , isStop
	Z:jnb p1.0 , Z
	inc r0
	sjmp main
	
	start:
		setb p1.1 //role enerjilendirildi.
		setb tr0
	ret
	
	stop:
		clr p1.1
		clr tr0
	ret
	
timer0kesmesi:
	dec r1
	mov th0 , dph
	mov tl0 , dpl
reti

kutuKontrol:
	mov a , r0
	clr c
	subb a , #100d
	jnz komplementCheck
	sjmp isStop //sifira esit olmadigi icin basa atar
	komplementCheck:
		jnc komplementAl
		sjmp isStop
sjmp isStop

komplementAl:
cpl p1.2
sjmp isStop

end
	
	
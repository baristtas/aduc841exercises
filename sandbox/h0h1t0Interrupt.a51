#include "aduc841.h"

//7.8Mhz icin 0.9snde hangi tus daha cok basilmissa ona gore led yakan program. 140kere of olmali
//timer 0 kullanilacak

org 0000h
sjmp ayar

org 000bh
	sjmp tim0int
	
org 0003h
	sjmp hkesme0
	
org 0013h
	sjmp hkesme1
		
		
	ayar:
		clr p1.0
		setb ea
		setb it0
		setb it1
		setb ex0
		setb ex1
		setb et0
		mov dptr , #15536d
		mov tmod , #00000001b
		mov th0 , dph
		mov tl0 , dpl
		mov r0 , #00h //timer tasmasini sayar
		mov r1 , #00h //p3.2yi sayar
		mov r2 , #00h //p3.3u sayar
		setb tr0
		sjmp main
	
	main: sjmp main
	
	hkesme0:
		inc r1 // her p3.2 basildiginda r1 artar.
	reti
	
	hkesme1:
		inc r2 // her p3.3 basildiginda r2 artar
	reti
	
	tim0int:
		inc r0
		mov th0 , dph
		mov tl0 , dpl
		cjne r0 , #140d , retLabel
		mov a , r1
		subb a , r2 //esitse p1.0 yanacak, aksi halde sonecek.
		jnz clrAndRet // a sifir degilse sonuk birakir.
		jc clrAndRet //sonuc eksiliyse de sonuk birakir
		setb p1.0 //esit oldugu icin yakar.
		clrAndRet:
			clr ea //butun kesmeleri kapatir ve program sonsuz donguye sokulur.
				retLabel: 
					reti	
end

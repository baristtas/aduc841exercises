#include "aduc841.h"

//bu programdaki kesme 17.8mhz ile çalisirken her 1ms'de bir p3.7'yi toggle eder.
//toggle ettigini rahat gorebilmek icin main programda her 200 defada bir toggle ettirecegim.

org 0000h
sjmp ayar

org 000bh //ayarladigimiz interrupt bu program hafiza adresine atlatacak.
	sjmp timer0kesme
	
	ayar:
		mov tmod , #00000001h
		setb ea
		setb et0
		mov dptr , #47736
		mov th0 , dph
		mov tl0 , dpl
		setb tr0

	main:
		cjne r0 , #200d , main
		cpl p3.7
		mov r0 , #00h
		sjmp main
	
	timer0kesme:
		mov th0 , dph
		mov tl0 , dpl
		inc r0
		reti
end

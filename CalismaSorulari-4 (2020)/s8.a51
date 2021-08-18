#include "aduc841.h"

//veritabani arama sorusu. a sikkinin cevabinda yapacagim.
//eger aranan deger varsa 00h BITINI set edecegim. database'i taradiktan sonra 00h bitini kontrol edip led yakacagim.

//cozum test db'den 6h silinip ve eklenip denendi.
org 0000h
	sjmp ayar
	
	ayar:
		nop
	
	basla:
		mov r0 , #0Ah
		mov dptr , #veritabani //veritabani program hafiza adresi dptr'ye basildi.
	X:
		dec r0
		mov a , r0
		movc a, @a+dptr
		mov p0 , a
		cjne a , #06d , aramayaDevamEt //06 bulunmazsa aramaya devam eder.
		sjmp veriBulundu //veri bulunursa bu etikete gider.
		
	aramayaDevamEt:
		cjne r0,#00h,X //db'de kontrol edilecek veri kaldiysa x'e geri don.
		sjmp varYokDurumunuPortaBas //db aramasi bitince durumu basmaya gider.
			
	veriBulundu:
		mov 20h , #00h //20h adresi sifirlandi
		setb 00h //00h bitini setler
		
	varYokDurumunuPortaBas:
		mov p0 , #00h //portu temizledik
		jb 00h , p01Yak //veri bulunduysa p01'i yakacak.
		setb p0.2 //veri bulunamadiysa buraya girer.
		sjmp basla //tekrardan basa doner.
	p01Yak:
		setb p0.1
		sjmp basla


	
	veritabani: db 19d,8d,17d,6d,15d,4d,13d,2d,11d,0d
end
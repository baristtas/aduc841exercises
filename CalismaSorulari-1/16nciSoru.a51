#include "aduc841.h"
//16. MN �grenci numaranizin son iki hanesi olmak �zere,
//RAM�in bit adreslenebilir b�lgesindeki MNh adresini 1 yaparak sonucu g�zleyiniz.
//RAM�in bit adreslenebilir b�lgesindeki MNd adresini 1 yaparak sonucu g�zleyiniz.
	
org 0000h
	setb 78h
	setb 78d //4eh biti
end
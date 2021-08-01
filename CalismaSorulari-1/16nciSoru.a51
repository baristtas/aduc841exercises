#include "aduc841.h"
//16. MN ögrenci numaranizin son iki hanesi olmak üzere,
//RAM’in bit adreslenebilir bölgesindeki MNh adresini 1 yaparak sonucu gözleyiniz.
//RAM’in bit adreslenebilir bölgesindeki MNd adresini 1 yaparak sonucu gözleyiniz.
	
org 0000h
	setb 78h
	setb 78d //4eh biti
end
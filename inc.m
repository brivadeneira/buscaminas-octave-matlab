function [suma]=inc(suma,M,f,c)
#incremento la cantidad de minas
	tmp=suma;
	if (M(f,c)==-1)	
		tmp=tmp+1;
	endif 
	suma=tmp;
end
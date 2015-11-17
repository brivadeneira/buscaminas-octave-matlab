function [v]=vrand(mxm,tam,vm)
#Devuelve un número entero, positivo, aleatorio menor o igual a mxm, y de longitud tam. Necesito un vm.
for i=1:1:tam
	tmp=randp(vm);
	while or(tmp==0, tmp>mxm)
		tmp=randp(vm);
	end
	v(i)=tmp;
end 
end
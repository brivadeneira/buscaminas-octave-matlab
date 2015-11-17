function [n]= nrand(dim,vm)
#Devuelve un número entero, positivo, aleatorio menor a dim. Necesito un vm.
	tmp=randp(vm);
	while or(tmp==0, tmp>dim)
		tmp=randp(vm);
	end
	n=tmp;
end 
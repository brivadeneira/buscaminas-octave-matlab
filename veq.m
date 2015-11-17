function [u,v]= veq(u,v,max,vm)
#Corrige coincidencias repetidas en las posiciones de dos vectores.
lon=length(u);
for i=1:(lon-1)
	vtmp=[u(i),v(i)];
	for j=2:lon
		if and(vtmp(1)=u(j),vtmp(2)=v(j))
			u(j)=nrand(max,vm);
			v(j)=nrand(max,vm);
		end
	end 
end

end 
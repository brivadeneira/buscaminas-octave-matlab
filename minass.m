function [M]=minass(M,f,c)
#Devuelve una matriz con "-1" distribuido aleatoriamente, segun las posiciones de los vectores f y c
for i=1:(length(f))
	M(f(i),c(i))=-1;
end

end 
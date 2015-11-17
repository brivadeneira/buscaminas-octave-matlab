function [M]=pistas(M)
#Llena la matriz con los números que indican cuántos -1 hay alrededor.
[f,c]=size(M);
	for i=1:1:f
		for j=1:1:c
			if (M(i,j)==0)
				suma=0;
				#arriba
				if (i-1>0)
					tf=i-1; tc=j;
					suma=inc(suma,M,tf,tc);
				end
				#diag derecha arriba
				if and(i-1>0,(and(j+1>0,j+1<c+1)))
					tf=i-1; tc=j+1;
					suma=inc(suma,M,tf,tc);
				end
				#derecha
				if and(j+1>0,j+1<c+1)
					tf=i; tc=j+1;
					suma=inc(suma,M,tf,tc);
				end
				#diag derecha abajo
				if and(and(i+1>0,i+1<f+1),and(j+1>0,j+1<c+1))
					tf=i+1; tc=j+1;
					suma=inc(suma,M,tf,tc);
				end
				#abajo
				if and(i+1>0,i+1<f+1)
					tf=i+1; tc=j;
					suma=inc(suma,M,tf,tc);
				end
				#diag izq abajo
				if and((i+1<f+1),j-1>0)
					tf=i+1; tc=j-1;
					suma=inc(suma,M,tf,tc);
				end
				#izquierda
				if (j-1>0)
					tf=i; tc=j-1;
					suma=inc(suma,M,tf,tc);
				end
				#diag izq arriba
				if and(i-1>0,j-1>0)
					tf=i-1; tc=j-1;
					suma=inc(suma,M,tf,tc);
				end
				
				M(i,j)=suma;

			endif
		endfor
	endfor
				
end
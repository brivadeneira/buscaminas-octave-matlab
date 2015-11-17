function [A,c]=primeross(A,S,i,j)
	c=0;
	[dim,dim]=size(A);
	dif=(i-j);
	if (dif==0)
		a=dif;
	else 
		if (dif<0)
			a=-1;
		else
			a=1;
		end 
	end 
	switch a
	#Debajo de la diagonal
		case {1}
		#Descubro Arriba
			tf=(i-1); tc=j;
			if (S(tf,tc)!=(-1))
				A(tf,tc)=S(tf,tc);
				c=c+1;
			end 
		#Descubro Diag derecha arriba
			tf=i-1; tc=j+1;
			if (S(tf,tc)!=-1)
				A(tf,tc)=S(tf,tc);
				c=c+1;
			end 
		#Descubro Derecha 
			tf=i; tc=j+1;
			if (S(tf,tc)!=-1)
				A(tf,tc)=S(tf,tc);
				c=c+1;
			end
	#Encima de la diagonal 
		case {-1}
		#Descubro Abajo
			tf=i+1; tc=j;
			if (S(tf,tc)!=-1)
				A(tf,tc)=S(tf,tc);
				c=c+1;
			end 
		#Descubro Diag Izquierda Abajo
			tf=i+1; tc=j-1;
			if (S(tf,tc)!=-1)
				A(tf,tc)=S(tf,tc);
				c=c+1;
			end 
		#Descubro Izquierda
			tf=i; tc=j-1;
			if (S(tf,tc)!=-1)
				A(tf,tc)=S(tf,tc);
				c=c+1;
			end
	#En la diagonal 
		case {0}
			#Todos menos el último 
			if (j<dim)
				#Descubro Derecha 
				tf=i; tc=j+1;
				if (S(tf,tc)!=-1)
					A(tf,tc)=S(tf,tc);
					c=c+1;
				end
				#Descubro Derecha diag Abajo
				tf=i+1; tc=j+1;
				if (S(tf,tc)!=-1)
					A(tf,tc)=S(tf,tc);
					c=c+1;
				end
				#Descubro Abajo
				tf=i+1; tc=j;
				if (S(tf,tc)!=-1)
					A(tf,tc)=S(tf,tc);
					c=c+1;
				end 
			else #El último
				#Descubro Arriba
				tf=i-1; tc=j;
				if (S(tf,tc)!=-1)
					A(tf,tc)=S(tf,tc);
					c=c+1;
				end 
				#Descubro Diag Izq Arriba
				tf=i-1; tc=j-1;
				if (S(tf,tc)!=-1)
					A(tf,tc)=S(tf,tc);
					c=c+1;
				end 
				#Descubro Izquierda
				tf=i; tc=j-1;
				if (S(tf,tc)!=-1)
					A(tf,tc)=S(tf,tc);
					c=c+1;
				end
			end 
	end

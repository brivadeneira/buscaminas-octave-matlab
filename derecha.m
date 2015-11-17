function [A,cont]=derecha(A,M,i,j)
	tf=i-1; tc=j; #arriba
	if (M(tf,tc)!=-1)
		A(tf,tc)=M(tf,tc);
		cont=cont+1;
	end 
	tf=i-1; tc=j+1; #diag derecha arriba
	if (M(tf,tc)!=-1)
		A(tf,tc)=M(tf,tc);
		cont=cont+1;
	end 
	tf=i; tc=j+1; #derecha
	if (M(tf,tc)!=-1)
		A(tf,tc)=M(tf,tc);
		cont=cont+1;
	end 
end
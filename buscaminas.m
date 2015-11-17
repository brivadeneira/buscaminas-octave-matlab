#PROGRAMA PRINCIPAL
#Inicializo toda variable
opcion=[]; dim=[]; minas=[]; S=[]; A=[]; total=[]; f=[]; c=[];
printf('\t\t¡BIENVENIDO!\n'); 
printf('Por favor, elija el tamaño de la matríz.\n');
printf('0 para 4x4\n');
printf('1 para 8x8\n');
printf('2 para 16x16\n');
opcion=input('OPCIÓN: ');
while and((opcion!=0),(opcion!=1),(opcion!=2))
	printf('¡OPCIÓN INEXISTENTE! Intente nuevamente \n');
	opcion=input('OPCIÓN: ');
end
#Defino dimensión de la matriz
switch opcion
	case {opcion=0}
		dim=4; minas=6; vm=2;
	case {opcion=1}
		dim=8; minas=10; vm=5;
	case {opcion=2}
		dim=16, minas=40; vm=7;
endswitch
A=zeros(dim);
S=A;
#A=9*ones(dim);
total=dim*dim;
#Genero vectores de posiciones aleatorias
f=vrand(minas,dim,vm);
c=vrand(minas,dim,vm);
#Controlo que no se repitan las posiciones
veq(f,c,minas,vm);
veq(f,c,minas,vm);
veq(f,c,minas,vm);
#Relleno de minas
S=minass(S,f,c);
#Completo la matriz con números pistas
S=pistas(S);
#Muestro Matriz auxiliar
printf('\t\t¡El juego ha comenzado!\n')
A
#Controlo resultado súbito
gano=1;
perdio=1;
cont=minas;
#Descubro alrededores iniciales
opf=input('Ingrese FILA: ');
opc=input('Ingrese COLUMNA: ');
while and(opf>dim,opc>dim)
	printf('\t\t¡ERROR! Usted se salió de la matriz\n');
	opf=input('Ingrese FILA: ');
	opc=input('Ingrese COLUMNA: ');
end
#Controlo resultado súbito malo
if (S(opf,opc)==-1)
	printf('\t\t¡USTED HA PERDIDO! Fin del Juego. Solución:\n');
	S
	printf('Inténtelo nuevamente...\n');
	perdio=0;
	gano=0;
end 
if (perdio!=0)
	[A,c]=primeross(A,S,opf,opc);
	cont=cont+c;
	A
endif  
while and(perdio,gano)
	opf=input('Ingrese FILA: ');
	opc=input('Ingrese COLUMNA: ');
	while and(opf>dim,opc>dim)
		printf('\t\t¡ERROR! Usted se salió de la matriz\n');
		opf=input('Ingrese FILA:');
		opc=input('Ingrese COLUMNA: ');
	endwhile 
	if (S(opf,opc)==-1)
		perdio=1;
		printf('\t\tUSTED HA PERDIDO! Solución:\n');
		S
		printf('Inténtelo nuevamente...\n');
	else 
		if (A(opf,opc)==0)
			A(opf,opc)=S(opf,opc);
			cont=cont+1;
			A
		else
			A(opf,opc)=S(opf,opc);
			A
		endif
	endif 
	if (cont==total)
		gano=0;
		printf('\t\t¡USTED GANA!\n');
	end 
endwhile

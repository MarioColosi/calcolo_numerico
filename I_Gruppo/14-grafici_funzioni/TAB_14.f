	PROGRAM TAB 
* .Fare il grafico delle funzioni
	REAL X(0:98),Y(0:98)
	WRITE(*,*)'Inserisci gli estremi di graficazione:'
	READ(*,*)A,B,N
	N=N-1
	H=(B-A)/N
	X(0)=A
	Y(0)=F(X(0))
	DO I=1,N-1
		X(I)=X(I-1)+H
		Y(I)=F(X(I))
	END DO
	X(N)=B
	Y(N)=F(X(N))
	DO I=0,N
		WRITE(*,*)X(I),Y(I)
		WRITE(3,*)X(I),Y(I)
	END DO 
	END 
	
	REAL FUNCTION F(X)
*	F=ABS(X)
*	F=1/((25*X*X)+1)
*	F=X/(1+(X*X))
*	F=SIN(X)/X
	F=TAN(X)/X
	END 
		

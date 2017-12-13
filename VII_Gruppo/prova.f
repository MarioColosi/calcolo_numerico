	PROGRAM PROVA 

	PARAMETER(N_MAX=500)
* 14.Fare il grafico delle funzioni
	REAL LAGRANGE
	REAL X(0:98),Y(0:98),X2(5),Y2(5)
	REAL A,B,H
*    Sottotitolo (INPUT: 1 stringa da 50 caratteri)
2	FORMAT(/,2X,52('-'),/,2X,'  ',A,/,2X,52('-'),/)
*    Messaggio di input (INPUT: 1 stringa, 1 intero)
3	FORMAT(2X,'[INPUT] ',A,$)
																	
      WRITE(*,2)'              GRAFICI DI FUNZIONI                 '

	WRITE(*,3)'Inserisci gli estremi di graficazione [a,b]: '
	READ(*,*)A,B
	WRITE(*,3)'Inserisci il numero di punti di graficazione: '
	READ(*,*)N
	X2(1)=-10;			Y2(1)=3.998401E-04	
	X2(2)=-5;			Y2(2)=1.597444E-03
	X2(3)=0;			Y2(3)=1.000000 
	X2(4)=5;			Y2(4)=1.597444E-03
	X2(5)=10;			Y2(5)=3.998401E-04
	N=N-1
	H=(B-A)/N
	X(0)=A
	Y(0)=LAGRANGE(X(0),X2,Y2,5)
	DO I=1,N-1
		X(I)=X(I-1)+H
		Y(I)=LAGRANGE(X(I),X2,Y2,5)
	END DO
	X(N)=B
	Y(N)=LAGRANGE(X(N),X2,Y2,5)
	WRITE(*,*)
	WRITE(*,*)' [RESULT] Punti di graficazione'
	DO I=0,N
		WRITE(*,*)X(I),Y(I)
		WRITE(3,*)X(I),Y(I)
	END DO 
	WRITE(*,*)
	END 

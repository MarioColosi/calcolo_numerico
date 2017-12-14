	PROGRAM TAB 
* 14.Fare il grafico delle funzioni
	REAL X(0:98),Y(0:98)

*    Sottotitolo (INPUT: 1 stringa da 50 caratteri)
2	FORMAT(/,2X,52('-'),/,2X,'  ',A,/,2X,52('-'),/)
*    Messaggio di input (INPUT: 1 stringa, 1 intero)
3	FORMAT(2X,'[INPUT] ',A,$)
																	
      WRITE(*,2)'              GRAFICI DI FUNZIONI                 '

	WRITE(*,3)'Inserisci gli estremi di graficazione [a,b]: '
	READ(*,*)A,B
	WRITE(*,3)'Inserisci il numero di punti di graficazione: '
	READ(*,*)N
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
	WRITE(*,*)
	WRITE(*,*)' [RESULT] Punti di graficazione'
	DO I=0,N
		WRITE(*,*)X(I),Y(I)
		WRITE(3,*)X(I),Y(I)
	END DO 
	WRITE(*,*)
	END 
	
	REAL FUNCTION F(X)
	F=ABS(X)
*	F=1/((25*X*X)+1)
*	F=X/(1+(X*X))
*	F=SIN(X)/X
*	F=TAN(X)/X
	END 
		

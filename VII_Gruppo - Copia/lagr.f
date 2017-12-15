	PROGRAM LAGR 
* Verificare la bontà del metodo di interpolazione di Lagrange o di Newton su alcune funzioni,
* di cui si conosce la formula analitica, considerando tabulati con 5, 6, 11, 12, 20, 25 punti 
* equidistanti. Analizzare il grafico degli errori. Costruire la tabella contenente la norma 
* dell'errore. Commentare i risultati.
	PARAMETER(N_MAX=500)
* 14.Fare il grafico delle funzioni
	REAL LAGRANGE
	REAL X(0:98),Y(0:98),X2(N_MAX),Y2(N_MAX)
	REAL A,B,H
	REAL F,FATT,POLI_MOD_MON,M,R
*    Sottotitolo (INPUT: 1 stringa da 50 caratteri)
2	FORMAT(/,2X,52('-'),/,2X,'  ',A,/,2X,52('-'),/)
*    Messaggio di input (INPUT: 1 stringa, 1 intero)
3	FORMAT(2X,'[INPUT] ',A,$)
																	
      WRITE(*,2)'              GRAFICI DI FUNZIONI                 '

	WRITE(*,3)'Inserisci gli estremi di graficazione [a,b]: '
	READ(*,*)A,B
	WRITE(*,3)'Inserisci il numero di punti di graficazione: '
	READ(*,*)N
	WRITE(*,3)'Inserisci il numero di punti di interpolazione: '
	READ(*,*)N1
	DO I=1,N1
		READ(3,*)X2(I),Y2(I)
	END DO
	N=N-1
	H=(B-A)/N
	X(0)=A
	Y(0)=LAGRANGE(X(0),X2,Y2,N1)
	DO I=1,N-1
		X(I)=X(I-1)+H
		Y(I)=LAGRANGE(X(I),X2,Y2,N1)
	END DO
	X(N)=B
	Y(N)=LAGRANGE(X(N),X2,Y2,N1)
	WRITE(*,*)
	WRITE(*,*)' [RESULT] Punti di graficazione'
	DO I=0,N
		WRITE(*,*)X(I),Y(I)
*		WRITE(3,*)X(I),Y(I)
	END DO 
	WRITE(*,*)
	DO I=0,N
		R=F(X(I))/FATT(N1+1)*POLI_MOD_MON(X(I),X2,N1)
		WRITE(3,*)R
	END DO
*	M=0
*	DO I=0,N
*		IF(M.LT.F(X(I)))THEN
*			M=ABS(F(X(I)))
*		END IF 
*	END DO

	END 

	REAL FUNCTION F(X)
	REAL X 
	F=1/((25*X*X)+1)
	END 

	REAL FUNCTION POLI_MOD_MON(X,X2,N1)
	REAL X2(N1),X,P
      POLI_MOD_MON=1
	DO I=1,N1
		P=P*(X-(X2(I)))
	END DO 
	END 
	



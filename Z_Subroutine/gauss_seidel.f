****** Subroutine di risoluzione di un sistema lineare Ax=b attraverso il metodo iterativo Gauss-Seidel
*
*	 [PARAMETRI DI INPUT]
*		- A: matrice dei coefficienti
*	    - B: vettore dei termini noti
*		- X: vettore iniziale del metodo iterativo
*		- N_MAX: dimensione della reale dimensione della matrice
*		- N: dimensione effettiva della matrice
*		- MAX_ITER: numero massimo di iterati da effettuare
*
*	 [PARAMETRI DI OUTPUT]
*	    - X: vettore soluzione
*		- ITER: numero dell'ultima iterazione (Se uguale a MAX_ITER+1, allora il test di arresto non ha avuto successo)
*		- EPS: valore da considerare per il test di arresto
*		- WRITE_ERR: .TRUE./.FALSE. => abilita/disabilita la scrittura su file dell'andamento dell'errore nei vari iterati
*			
      SUBROUTINE GAUSS_SEIDEL(A,B,X,N_MAX,N,MAX_ITER,ITER,EPS,WRITE_ERR)
	REAL A(N_MAX,N_MAX)
	REAL B(N_MAX),X(N_MAX)
	REAL SOMMA,DELTA,DELTAMAX,R
	LOGICAL WRITE_ERR
	DELTAMAX=0.0
	X(:)=0.0
	DO ITER=1,MAX_ITER
		DO I=1,N
			SOMMA=0.0
			DELTAMAX=0.0
*			Si conserva il vecchio valore di X(I)
			DELTA=X(I)
*			Calcolo della sommatoria
			DO J=1,I-1
				SOMMA=SOMMA+(A(I,J)*X(J))
			END DO
			DO J=I+1,N
				SOMMA=SOMMA+(A(I,J)*X(J))
			END DO
*			Calcolo dell'i-esima soluzione
			X(I)=(B(I)-SOMMA)/A(I,I)
*			Calcolo della norma inf della differenza vettoriale tra la vecchia X e la nuova X
			DELTA=DELTA-X(I)
			IF(ABS(DELTA).GT.DELTAMAX)THEN
				DELTAMAX=ABS(DELTA)
			END IF
		END DO
* ------- TEST DI ARRESTO ----------------------------------
		R=DELTAMAX/NORMAINF(X,N)
		IF(WRITE_ERR)WRITE(3,*)ITER,R
		IF(R.LT.EPS)THEN
			RETURN
		END IF	
* ---------------------------------------------------------- 
	END DO 
	END 
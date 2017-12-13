****** Subroutine di risoluzione di un sistema lineare Ax=b attraverso il metodo iterativo di Jacobi
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
*		- X: vettore soluzione
*		- ITER: numero dell'ultima iterazione (Se uguale a MAX_ITER+1, allora il test di arresto non ha avuto successo)
*		- EPS: valore da considerare per il test di arresto
*		- WRITE_ERR: .TRUE./.FALSE. => abilita/disabilita la scrittura su file dell'andamento dell'errore nei vari iterati
*	
	SUBROUTINE JACOBI(A,B,X,N_MAX,N,MAX_ITER,ITER,EPS,WRITE_ERR)
	REAL A(N_MAX,N)
	REAL B(N),X_OLD(N),X(N),DELTA(N)
	REAL NORMAINF,EPS
	LOGICAL WRITE_ERR
*    Inizializzazione del vettore X_OLD
	DO I=1,N
		X_OLD(I)=X(I)
	END DO

*    Algoritmo di iterazione	
      DO ITER=1,MAX_ITER
		DO I=1,N
			X(I)=B(I)
			DO J=1,I-1
				X(I)=X(I)-(A(I,J)*X_OLD(J))
			END DO
			DO J=I+1,N
				X(I)=X(I)-(A(I,J)*X_OLD(J))
			END DO
			X(I)=X(I)/A(I,I)
		END DO
		DO I=1,N
			DELTA(I)=X(I)-X_OLD(I)
			X_OLD(I)=X(I)
		END DO
* ------- TEST DI ARRESTO ------------------------------------------------
		R=NORMAINF(DELTA,N)/NORMAINF(X,N)
		IF(WRITE_ERR)WRITE(3,*)R
		IF(R.LT.EPS)THEN
			RETURN
		END IF
* ------------------------------------------------------------------------ 
	END DO
	END

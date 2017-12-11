	SUBROUTINE JACOBI_OTTIMIZZATO(A,B,X,N_MAX,N,MAX_ITER,ITER,EPS)
	REAL A(N_MAX,N)
	REAL B(N),X_OLD(N),X(N),DELTA(N)
	REAL NORMAINF,EPS
	LOGICAL ENDTEST
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
		IF(NORMAINF(DELTA,N)/NORMAINF(X,N).LT.EPS)THEN
			RETURN
		END IF
* ------------------------------------------------------------------------ 
	END DO
	END

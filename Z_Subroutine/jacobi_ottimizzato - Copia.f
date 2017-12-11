	SUBROUTINE JACOBI_OTTIMIZZATO(A,B,X_NEW,N_MAX,N,MAX_K,EPS,ENDTEST)
	REAL A(N_MAX,N)
	REAL B(N),X_OLD(N),X_NEW(N),DELTA(N)
	REAL SOMMA,NORMAINF,EPS
	LOGICAL ENDTEST
*    Inizializzazione del vettore X_OLD
	DO I=1,N
		X_OLD(I)=X_NEW(I)
	END DO
*    Variabile logica settata a TRUE quando il test di arresto ha successo
	ENDTEST=.FALSE.
*    Algoritmo di iterazione	
      DO K=1,MAX_K
		DO I=1,N
			SOMMA=0.0
			DO J=1,I-1
				SOMMA=SOMMA+(A(I,J)*X_OLD(J))
			END DO
			DO J=I+1,N
				SOMMA=SOMMA+(A(I,J)*X_OLD(J))
			END DO
				WRITE(*,*)(X_OLD(I),Y=1,N)
			X_NEW(I)=(B(I)-SOMMA)/A(I,I)
		END DO
* ------- TEST DI ARRESTO ------------------------------------------------
		CALL DELTA_VETT(X_NEW,X_OLD,DELTA,N)
		IF(NORMAINF(DELTA,N)/NORMAINF(X_NEW,N).LT.EPS)THEN
			ENDTEST=.TRUE.
			WRITE(*,*)'Test di arresto'
			RETURN
		END IF
* ------------------------------------------------------------------------ 
		DO I=1,N
			X_OLD(I)=X_NEW(I)
		END DO
	END DO
	END

****** Subroutine che, dati due vettori, calcola il delta vettoriale.
	SUBROUTINE DELTA_VETT(X,Y,DELTA,N)
	REAL X(N),Y(N),DELTA(N)
	DO I=1,N
		DELTA(I)=X(I)-Y(I)
	END DO
	END
		
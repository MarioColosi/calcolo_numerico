	PROGRAM EQUIVALENZA
* Verificare il Teorema di equivalenza tra le norme vettoriali. 
* In particolare le relazioni tra le tre norme vettoriali studiate.

 	PARAMETER(MAX_N=500)
	REAL X(MAX_N)
	REAL N_1,N_2,N_INF,NORMA1,NORMA2,NORMA_INF
	WRITE(*,*)'Inserisci la dimensione del vettore:'
	READ(*,*)N
	CALL INIT(X,N)
	N_1=NORMA1(X,N)
	N_2=NORMA2(X,N)
	N_INF=NORMA_INF(X,N)

	IF(N_INF.LE.N_2.AND.N_2.LE.SQRT(FLOAT(N))*N_INF)THEN
		WRITE(*,*)N_INF,' <= ', N_2,' <=' ,SQRT(FLOAT(N))*N_INF 
		WRITE(*,*)'E'' verificata la prima disequazione!'
		WRITE(*,*)
	END IF
	IF(N_2.LE.N_1.AND.N_1.LE.SQRT(FLOAT(N))*N_2)THEN
		WRITE(*,*)N_2,' <= ', N_1,' <=' ,SQRT(FLOAT(N))*N_2 
		WRITE(*,*)'E'' verificata la seconda disequazione!'
		WRITE(*,*)
	END IF
	IF(N_INF.LE.N_1.AND.N_1.LE.N*N_INF)THEN 
		WRITE(*,*)N_INF,' <= ', N_1,' <=' ,N*N_INF
		WRITE(*,*)'E'' verificata la terza disequazione!'
		WRITE(*,*)
	END IF
	END

	

	SUBROUTINE INIT(X,N)
	REAL X(N)
	WRITE(*,*)'Inserisci i valori per il vettore:'
	READ(*,*)(X(I),I=1,N)
	END

	REAL FUNCTION NORMA1(X,N)
	REAL X(N)
	NORMA1=0
	DO I=1,N
		NORMA1=NORMA1+ABS(X(I))
	END DO
	END

	REAL FUNCTION NORMA2(X,N)
	REAL X(N)
	NORMA2=0
	DO I=1,N
		NORMA2=NORMA2+(X(I)*X(I))
	END DO
	NORMA2=SQRT(NORMA2)
	END 

	REAL FUNCTION NORMA_INF(X,N)
	REAL X(N)
	NORMA_INF=X(1)
	DO I=2,N
		IF(NORMA_INF.LT.X(I))THEN
			NORMA_INF=X(I)
	    END IF
	END DO
	END
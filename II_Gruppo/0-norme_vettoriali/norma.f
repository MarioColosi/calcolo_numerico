	PROGRAM NORMA
* Scrivere la norma1, la norma2, la norma infinito

	PARAMETER (MAX=100)
	REAL X(MAX)
	REAL NORMA1,NORMA2,NORMA_INF
	REAL N1,N2,N_INF
	WRITE(*,*)'Inserisci la dimensione del vettore, massimo 100:'
	READ(*,*) N
	CALL INIT(X,N)
	N1=NORMA1(X,N)
	N2=NORMA2(X,N)
	N_INF=NORMA_INF(X,N)
	WRITE(*,*)'La norma 1 e'':',N1
	WRITE(*,*)'La norma 2 e'':',N2
	WRITE(*,*)'La norma infinito e'':',N_INF
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

	REAL FUNCTION NORMAINF(X,N)
	REAL X(N)
	NORMA_INF=ABS(X(1))
	DO I=2,N
		IF(NORMA_INF.LT.ABS(X(I)))THEN
			NORMA_INF=ABS(X(I))
	    END IF
	END DO
	END

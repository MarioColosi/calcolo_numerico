	PROGRAM EQUIVALENZA
	USE MSIMSL
*  Verificare le principali relazioni tra le varie norme matriciali studiate 
	
 	PARAMETER(N_MAX=500)
	REAL X(N_MAX,N_MAX)
	REAL M,N_1,N_2,N_INF,NORMA_1,NORMA_2,NORMA_INF
	WRITE(*,*)'Inserisci la dimensione della matrice:'
	READ(*,*)N
	CALL INIT(X,N_MAX,N)
20	FORMAT(:20(F7.2))
	DO I=1,N
		WRITE(*,20)(X(I,J),J=1,N)
		WRITE(*,*)
	END DO
	N_1=NORMA_1(X,N_MAX,N)
	N_2=NORMA_2(X,N_MAX,N)
	N_INF=NORMA_INF(X,N_MAX,N)
	M=FLOAT(N)
	IF(1/SQRT(M)*N_INF.LE.N_2.AND.N_2.LE.SQRT(M)*N_INF)THEN
		WRITE(*,*)1/SQRT(M)*N_INF,' <= ', N_2,' <=' ,SQRT(M)*N_INF 
		WRITE(*,*)'E'' verificata la prima disequazione!'
		WRITE(*,*)
	END IF
	IF(1/SQRT(M)*N_1.LE.N_2.AND.N_2.LE.SQRT(M)*N_1)THEN
		WRITE(*,*)1/SQRT(M)*N_1,' <= ', N_1,' <=' ,SQRT(M)*N_2 
		WRITE(*,*)'E'' verificata la seconda disequazione!'
		WRITE(*,*)
	END IF
	MAX=0
	DO I=1,N
		DO J=1,N
			IF(ABS(X(I,J)).GT.MAX)THEN
				MAX=ABS(X(I,J))
			END IF
		END DO
      END DO
	IF(MAX.LE.N_2.AND.N_2.LE.N*MAX)THEN 
		WRITE(*,*)MAX,' <= ', N_2,' <=' ,N*MAX
		WRITE(*,*)'E'' verificata la terza disequazione!'
		WRITE(*,*)
	END IF
	IF(N_2.LE.SQRT(N_1*N_INF))THEN	  
		WRITE(*,*)N_2,' <= ',SQRT(N_1*N_INF)
		WRITE(*,*)'E'' verificata la quarta disequazione!'
		WRITE(*,*)
	END IF
	END

	SUBROUTINE INIT(X,N_MAX,N)
	REAL X(N_MAX,N)
	WRITE(*,*)'Inserisci i valori della matrice:'
	DO I=1,N
		WRITE(*,*)'RIGA',I
		READ(*,*)(X(I,J),J=1,N)
	END	DO
	END

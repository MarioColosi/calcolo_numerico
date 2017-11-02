      PROGRAM GAUSS_JORDAN

      PARAMETER(MAX_N=500)
      REAL A(MAX_N,MAX_N)
      REAL X(MAX_N,MAX_N)
      WRITE(*,*)'Inserisci la dimensione della matrice:'
      READ(*,*)N
      CALL INIT_MATRIX(A,MAX_N,N)
      CALL GAUSS_J(A,X,MAX_N,N)
20	FORMAT(:10(F8.2))
      DO I=1,N
  		WRITE(*,20)(X(I,J),J=1,N)
  		WRITE(*,*)
      END DO
      END

	SUBROUTINE INIT_MATRIX(A,MAX_N,N)
	REAL A(MAX_N,N)
	WRITE(*,*)'*** INIZIALIZZAZIONE MATRICE'
	DO I=1,N
		WRITE(*,*)'---- RIGA:',I
		READ(*,*)(A(I,J),J=1,N)
		END DO
	END

	SUBROUTINE GAUSS_J(A,X,MAX_N,N)
	REAL A(MAX_N,N)
	REAL X(MAX_N,N)
	DO I=1,N
		DO J=1,N
			X(I,J)=0
		END DO
		X(I,I)=1
      END DO
      DO K=1,N-1
		MAX=0
		DO I=K,N
			IF(ABS(A(I,K)).GT.MAX)THEN
				MAX=ABS(A(I,K))
				L=I
			END IF
		END DO
		IF(MAX.EQ.0)THEN
			WRITE(*,*)'La matrice e'' singolare!'
			RETURN
		END IF
		IF(L.NE.K)THEN
			DO J=K+1,N
				W=A(L,J)
				A(L,J)=A(K,J)
				A(K,J)=W
			END DO
			DO I=1,N
				W=X(L,J)
				X(L,J)=X(K,J)
				X(K,J)=W
			END DO
		END IF
		DO I=K+1,N
			Q=A(I,K)/A(K,K)
			DO J=K+1,N
				A(I,J)=A(I,J)-Q*A(K,J)
			END DO
			DO J=1,N
				X(I,J)=X(I,J)-Q*X(K,J)
			END DO
		END DO
      END DO
      IF (A(N,N).EQ.0)THEN
		WRITE(*,*)'La matrice è singolare!'
		RETURN
      END IF
      DO K=1,N
		X(N,K)=X(N,K)/A(N,N)
		DO I=N-1,1,-1
			DO J=I+1,N
				X(I,K)=X(I,K)-A(I,J)*X(J,K)
			END DO
			X(I,K)=X(I,K)/A(I,I)
		END DO
      END DO
	END

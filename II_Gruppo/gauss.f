	PROGRAM GAUSS
* Metodo di Gauss con la strategia del pivot massimo
	PARAMETER(N_MAX=500)
	REAL A(N_MAX,N_MAX)
	REAL B(N_MAX)
	WRITE(*,*)'Inserisci la dimensione della matrice e del vettore:'
	READ(*,*)N
	CALL INIT_MATRIX(A,N_MAX,N)
	CALL INIT_B(B,N)
	CALL FATTORIZZAZIONE_GAUSS(A,B,N_MAX,N)
	CALL BACK
	END

	SUBROUTINE INIT_MATRIX(A,N_MAX,N)
	REAL A(N_MAX,N)
	WRITE(*,*)'Inserisci i valori della matrice:'
	DO I=1,N
		READ(*,*)(A(I,J),J=1,N)
	END DO
	END

	SUBROUTINE INIT_VETT(B,N)
	REAL B(N)
	WRITE(*,*)'Inserisci i valori del vettore:'
	READ(*,*)(B(I),I=1,N)
	END

	SUBROUTINE FATTORIZZAZIONE_GAUSS(A,B,N_MAX,N)
	REAL A(N_MAX,N)
	REAL B(N)
	REAL MAX,Q,W
	DO K=0,N-1
		MAX=0
		DO I=K,N
			IF(ABS(A(I,K).GT.MAX)
				MAX=A(I,K)
				L=I
			END IF
		END DO
		IF(MAX.EQ.0)
			WRITE(*,*)'La matrice � singolare!'
			RETURN
		END IF
		IF(L.NE.K)
			DO J=K,N
				W=A(L,J)
				A(L,J)=A(K,J)
				A(K,J)=W
			END DO
			W=B(L)
			B(L)=B(K)
			B(K)=W
		END IF
		DO I=K+1,N
			Q=A(I,K)/A(K,K)
			DO J=K+1,N
				A(I,J)=A(I,J)-Q*A(K,J)
			END DO
			B(I)=B(I)-Q*B(K)
		END DO
	END DO
	IF(A(N,N).EQ.0)
		WRITE(*,*)'La matrice � singolare!'
		RETURN
	END IF
	END


	SUBROUTINE BACK(A,B,MAX_N,N)
	REAL A(MAX_N,N)
	REAL B(N)
	REAL X(N)
	REAL SOMMA
	DO I=N,1,-1
		DO J=I+1,N
			SOMMA=SOMMA+A(I,J)*X(J)
		END DO
		X(I)=(B(I)-SOMMA)/A(I,I)
	END DO
	END

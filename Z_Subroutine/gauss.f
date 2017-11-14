	SUBROUTINE GAUSS(A,B,N_MAX,N)
	REAL A(N_MAX,N)
	REAL B(N)
	REAL MAX,Q,W
	DO K=1,N-1
		MAX=0
		DO I=K,N
			IF(ABS(A(I,K)).GT.MAX)THEN
				MAX=A(I,K)
				L=I
			END IF
		END DO
		IF(MAX.EQ.0)THEN
			WRITE(*,*)'La matrice e'' singolare!'
			RETURN
		END IF
		IF(L.NE.K)THEN
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
	IF(A(N,N).EQ.0)THEN
		WRITE(*,*)'La matrice e'' singolare!'
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


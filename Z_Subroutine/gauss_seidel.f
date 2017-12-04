	SUBROUTINE GAUSS_SEIDEL(A,B,X,N_MAX,N,MAX_K,EPS,ENDTEST)
	REAL A(N_MAX,N_MAX)
	REAL B(N_MAX),X(N_MAX)
	REAL SOMMA
	LOGICAL ENDTEST
	ENDTEST=.FALSE.
	X(:)=0.0
	DO K=1,MAX_K
		DO I=1,N
			SOMMA=0.0
			DO J=1,I-1
				SOMMA=SOMMA+(A(I,J)*X(J))
			END DO
			DO J=I+1,N
				SOMMA=SOMMA+(A(I.J)*X(J))
			END DO
			X(I)=(B(I)-SOMMA)/A(I,I)
		END DO
* ------- TEST DI ARRESTO ----------------------------------

* ---------------------------------------------------------- 
	END DO 
	END 
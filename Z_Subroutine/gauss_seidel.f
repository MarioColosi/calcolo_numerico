	SUBROUTINE GAUSS_SEIDEL(A,B,X,K,N_MAX,N)
	REAL A(N_MAX,N_MAX)
	REAL B(N_MAX),X(N_MAX)
	REAL VAR1,VAR2
	VAR1=0
	VAR2=0
	DO I=1,N
		DO J=1,I-1
			VAR1=VAR1+(A(I,J)*(X(J)**K))
		END DO
		DO J=I+1,N
			VAR2=VAR2+(A(I.J)*(X(J)**(K-1)))
		END DO
		VAR1=VAR1+VAR2
		(X(I)**(K))=(B(I)-VAR1)/A(I,I)
	END DO 
	END 
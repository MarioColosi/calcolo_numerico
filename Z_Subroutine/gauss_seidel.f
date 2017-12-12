	SUBROUTINE GAUSS_SEIDEL(A,B,X,N_MAX,N,MAX_ITER,ITER,EPS)
	REAL A(N_MAX,N_MAX)
	REAL B(N_MAX),X(N_MAX)
	REAL SOMMA,DELTA,DELTAMAX,R
	LOGICAL ENDTEST
	DELTAMAX=0
	X(:)=0.0
	DO ITER=1,MAX_ITER
		DO I=1,N
			SOMMA=0.0
			DO J=1,I-1
				SOMMA=SOMMA+(A(I,J)*X(J))
			END DO
			DO J=I+1,N
				SOMMA=SOMMA+(A(I,J)*X(J))
			END DO
			DELTA=X(I)
			X(I)=(B(I)-SOMMA)/A(I,I)
		END DO
* ------- TEST DI ARRESTO ----------------------------------
		DELTA=DELTA-X(I)
		IF(DELTA.GT.DELTAMAX)THEN
			DELTAMAX=DELTA
		END IF
		R=DELTAMAX/NORMAINF(X,N)
	write(*,*)deltamax
		WRITE(*,*)ITER,R
		IF(R.LT.EPS)THEN
			RETURN
		END IF	
* ---------------------------------------------------------- 
	END DO 
	END 
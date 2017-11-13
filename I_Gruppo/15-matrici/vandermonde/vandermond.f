	PROGRAM VANDERMOND_MATRIX

	PARAMETER(MAX_N=500)
	REAL V(MAX_N,MAX_N)
	WRITE(*,*)'Inserisci la dimensione della matrice: '
	READ(*,*)N
	CALL BUILD_VANDERMONDE(V,MAX_N,N)
	WRITE(*,*)'La matrice e'': '
	DO I=1,N
		WRITE(*,*)(V(I,J),J=1,N)
	END DO
	END

	SUBROUTINE BUILD_VANDERMONDE(V,MAX_N,N)
	REAL V(MAX_N,N)
	REAL X(N)
	CALL INIT_X(X,N)
	DO I=1,N
		V(I,1)=1
		DO J=2,N
			V(I,J)=X(I)**(J-1)
		END DO
	END DO
	END

	SUBROUTINE INIT_X(X,N)
	REAL X(N)
	REAL A,B,H
	WRITE(*,*)'Inserisci gli estremi dell''intervallo [a,b]: '
	READ(*,*)A,B
	H=ABS(A-B)/N
	X(1)=A
	DO I=2,N-1
		X(I)=X(I-1)+H
	END DO
	X(N)=B
	END

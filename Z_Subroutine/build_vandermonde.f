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
	WRITE(*,*)'Inserisci i valori del vettore X: '
	READ(*,*)(X(I),I=1,N)
	END 
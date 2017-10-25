	PROGRAM VANDERMOND_MATRIX

	PARAMETER(MAX_N=500)
	REAL V(MAX_N,MAX_N)
	REAL X(MAX_N)
	WRITE(*,*)'Inserisci la dimensione della matrice: '
	READ(*,*)N
	CALL INIT_X(X,N)
	CALL MATRIX_V(V,X,MAX_N,N)
	WRITE(*,*)'La matrice e'': '
	DO I=1,N
		WRITE(*,*)(V(I,J),J=1,N)
	END DO
	END

	SUBROUTINE INIT_X(X,N)
	REAL X(N)
	WRITE(*,*)'Inserisci i valori del vettore X: '
	READ(*,*)(X(I),I=1,N)
	END 
	

	SUBROUTINE MATRIX_V(V,X,MAX_N,N)
	REAL V(MAX_N,N)
	REAL X(N)
	DO I=1,N
		V(I,1)=1
		DO J=2,N
			V(I,J)=X(I)**(J-1)
		END DO
	END DO
	END

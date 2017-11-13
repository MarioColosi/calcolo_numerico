	PROGRAM TRIDIAGONALI
	PARAMETER(MAX_N=300)
	REAL A(MAX_N)
	WRITE(*,*)'Inserisci la grandezza della matrice: '
	READ(*,*)N
	CALL MATRIX_TRI(A,N)
	END

	SUBROUTINE MATRIX_H(H,N)
	REAL A(3*N)
	CALL INIT_VETT(A,N)
	END

	SUBROUTINE INIT_VETT(VETT,N)
	REAL A(3*N)
	A(0)=0
	WRITE(*,*)'Inserisci i valori del vettore a: '
	READ(*,*)(A(I),I=2,N)
	WRITE(*,*)'Inserisci i valori del vettore b: '
	READ(*,*)(A(I),I=N+1,2*N)
	WRITE(*,*)'Inserisci i valori del vettore b: '
	READ(*,*)(A(I),I=2*N+1,3*N-1)
	A(3*N)=0
	END

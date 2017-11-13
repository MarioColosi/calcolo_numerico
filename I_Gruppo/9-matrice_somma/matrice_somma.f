	PROGRAM MATRICE_SOMMA
*Date due matrici di ordine n calcolare la matrice somma
	PARAMETER(N_MAX=500)
	REAL A(N_MAX,N_MAX),B(N_MAX,N_MAX),C(N_MAX,N_MAX)
	WRITE(*,*)'Inserisci la dimensione della matrice:'
	READ(*,*)N
	CALL INIT_MATRIX(A,N_MAX,N)
	CALL INIT_MATRIX(B,N_MAX,N)
	WRITE(*,*)'La matrice A e'':'
	DO I=1,N
		WRITE(*,*)(A(I,J),J=1,N)
	END DO
	WRITE(*,*)'La matrice B e'':'
	DO I=1,N
		WRITE(*,*)(B(I,J),J=1,N)
	END DO
	CALL SOMMA(A,B,C,N_MAX,N)
	WRITE(*,*)'La matrice SOMMA e'':'
	DO I=1,N
		WRITE(*,*)(C(I,J),J=1,N)
	END DO
	END 

	SUBROUTINE INIT_MATRIX(A,N_MAX,N)
	REAL A(N_MAX,N)
	WRITE(*,*)'Inserisci i valori della matrice:'
	DO I=1,N
		READ(*,*)(A(I,J),J=1,N)
	END DO
	END 

	SUBROUTINE SOMMA(A,B,C,N_MAX,N)
	REAL A(N_MAX,N),B(N_MAX,N),C(N_MAX,N)
	DO I=1,N
		DO J=1,N
		C(I,J)=A(I,J)+B(I,J)
		END DO
	END DO
	END




	PROGRAM PRODOTTO_MATRICI
*Date due matrici di ordine n calcolare la matrice prodotto
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
	CALL MUL_MATRIX(A,B,C,N_MAX,N)
	WRITE(*,*)'La matrice PRODOTTO e'':'
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

	SUBROUTINE MUL_MATRIX(A,B,C,N_MAX,N)
	REAL A(N_MAX,N),B(N_MAX,N),C(N_MAX,N)
	DO I=1,N
		DO J=1,N
			C(I,J)=(0,0)
			DO K=1,N
			C(I,J)=C(I,J)+A(I,K)*B(K,J)
			END DO
		END DO
	END DO
	END
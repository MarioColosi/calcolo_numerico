	PROGRAM PRODOTTO_MATRICI
*Date due matrici di ordine n calcolare la matrice prodotto
	PARAMETER(N_MAX=500)
	REAL A(N_MAX,N_MAX),B(N_MAX,N_MAX),C(N_MAX,N_MAX)

*    Titolo (INPUT: 1 stringa da 50 caratteri)
2	FORMAT(/,2X,52('-'),/,2X,'  ',A,/,2X,52('-'),/)
*    Messaggio di input (INPUT: 1 stringa)
3	FORMAT(2X,'[INPUT] ',A,$)
																 	
	WRITE(*,2)'             PRODOTTO DI MATRICI                    '
	WRITE(*,3)'Inserisci la dimensione della matrice: '
	READ(*,*)N
	WRITE(*,*)
	WRITE(*,*)' [INPUT] MATRICE A'
	CALL INIT_MATRIX(A,N_MAX,N)
	WRITE(*,*)
	WRITE(*,*)' [INPUT] MATRICE B'
	CALL INIT_MATRIX(B,N_MAX,N)
	WRITE(*,*)
	WRITE(*,*)'---------------------------------------------------'
	WRITE(*,*)' [INPUT] MATRICE A'
	DO I=1,N
		WRITE(*,*)(A(I,J),J=1,N)
	END DO
	WRITE(*,*)
	WRITE(*,*)' [INPUT] MATRICE B'
	DO I=1,N
		WRITE(*,*)(B(I,J),J=1,N)
	END DO
	CALL MUL_MATRIX(A,B,C,N_MAX,N)
	WRITE(*,*)
	WRITE(*,*)' [RESULT] La matrice PRODOTTO e'':'
	DO I=1,N
		WRITE(*,*)(C(I,J),J=1,N)
	END DO
	WRITE(*,*)
	END 

****** Subroutine di inizializzazione di una matrice di dimensione N
	SUBROUTINE INIT_MATRIX(A,N_MAX,N)
	REAL A(N_MAX,N)
 3	FORMAT(2X,'[INPUT] ',A,'[RIGA',I3,']: ',$)
	DO I=1,N
		WRITE(*,3)'Inserisci i valori della matrice ', I
		READ(*,*)(A(I,J),J=1,N)
	END DO
	END 

****** Subroutine di calcolo della matrice PRODOTTO
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
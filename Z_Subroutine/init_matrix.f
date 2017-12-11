****** Subroutine di inizializzazione di una matrice di dimensione N
	SUBROUTINE INIT_MATRIX(A,N_MAX,N)
	REAL A(N_MAX,N)
 3	FORMAT(2X,'[INPUT] ',A,'[RIGA',I3,']: ',$)
	DO I=1,N
		WRITE(*,3)'Inserisci i valori della matrice ', I
		READ(*,*)(A(I,J),J=1,N)
	END DO
	END 

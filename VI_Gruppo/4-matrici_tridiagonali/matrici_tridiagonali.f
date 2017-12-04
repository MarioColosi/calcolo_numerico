	PROGRAM MATRICI_TRIDIAGONALI

* Scrivere il programma del metodo iterativo di Jacobi per risolvere il sistema lineare Ax=b , 
* dove A e’ una matrice tridiagonale, pentadiagonale o eptadiagonale, usando la tecnica di 
* memorizzazione di A in vettori.

	PARAMETER(N_MAX=500)
	REAL TRI(N_MAX,N_MAX), PEN(N_MAX,N_MAX), EPT(N_MAX,N_MAX)
	REAL X1(N_MAX),X2(N_MAX),X3(N_MAX),X4(N_MAX),X5(N_MAX)
	REAL X6(N_MAX),X7(N_MAX)
	N1=4
	WRITE(*,*)'La dimensione della matrice tridiagonale è N1=',N1
	N2=6
	WRITE(*,*)'La dimensione della matrice pentadiagonale è N2=',N2
	N3=8
	WRITE(*,*)'La dimensione della matrice eptadiagonale è N3=',N3

	CALL INIT_TRI(TRI,N_MAX,N1,X1,X2,X3)
	WRITE(*,*)'MATRICE TRIDIAGONALE:'
	DO I=1,N1
		WRITE(*,*)(TRI(I,J),J=1,N1)
	END DO

	CALL INIT_PEN(PEN,N_MAX,N2,X1,X2,X3,X4,X5)
	WRITE(*,*)'MATRICE PENTADIAGONALE:'
	DO I=1,N2
		WRITE(*,*)(PEN(I,J),J=1,N2)
	END DO

	CALL INIT_EPT(EPT,N_MAX,N3,X1,X2,X3,X4,X5,X6,X7)
	WRITE(*,*)'MATRICE EPTADIAGONALE:'
	DO I=1,N3
		WRITE(*,*)(EPT(I,J),J=1,N3)
	END DO

	END 
	
	
	SUBROUTINE INIT_TRI(TRI,N_MAX,N1,X1,X2,X3)
	REAL TRI(N_MAX,N1)
	REAL X1(N1),X2(N1),X3(N1)
	WRITE(*,*)'Inserisci 4 valori:'
	READ(*,*)(X1(I),I=1,4)
	WRITE(*,*)'Inserisci 3 valori:'
	READ(*,*)(X2(I),I=1,3)
	WRITE(*,*)'Inserisci 3 valori:'
	READ(*,*)(X3(I),I=1,3)
	DO I=1,N1
		DO J=1,N1
			TRI(I,J)=0
			IF (I==J)THEN 
				TRI(I,J)=X1(I)
			END IF
			IF (J==I+1.AND.J==I-1)THEN
				TRI(I,J)=X2(I)
			END IF 
			IF (J==I-1)THEN
				TRI(I,J)=X3(I)
			END IF
	END DO 
	END DO 
	END 

	SUBROUTINE INIT_PEN(PEN,N_MAX,N2,X1,X2,X3,X4,X5)
	REAL PEN(N_MAX,N2)
	REAL X1(6),X2(5),X3(5),X4(4),X5(4)
	WRITE(*,*)'Inserisci 6 valori:'
	READ(*,*)(X1(I),I=1,6)
	WRITE(*,*)'Inserisci 5 valori:'
	READ(*,*)(X2(I),I=1,5)
	WRITE(*,*)'Inserisci 5 valori:'
	READ(*,*)(X3(I),I=1,5)
	WRITE(*,*)'Inserisci 4 valori:'
 	READ(*,*)(X4(I),I=1,4)
	WRITE(*,*)'Inserisci 4 valori:'
 	READ(*,*)(X5(I),I=1,4)
	DO I=1,N2
		DO J=1,N2
			PEN(I,J)=0
			IF (I==J)THEN 
				PEN(I,J)=X1(I)
			END IF
			IF (J==I+1)THEN
				PEN(I,J)=X2(I)
			END IF 
			IF (I==J+1)THEN
				PEN(I,J)=X3(I)
			END IF
			IF(I==J+2)THEN
				PEN(I,J)=X4(I)
			END IF
			IF (J==I+2)THEN
				PEN(I,J)=X5(I)
			END IF
	END DO 
	END DO 
	END 


	SUBROUTINE INIT_EPT(EPT,N_MAX,N3,X1,X2,X3,X4,X5,X6,X7)
	REAL EPT(N_MAX,N3)
	REAL X1(8),X2(7),X3(7),X4(6),X5(6),X6(5),X7(5)
	WRITE(*,*)'Inserisci 8 valori:'
	READ(*,*)(X1(I),I=1,8)
	WRITE(*,*)'Inserisci 7 valori:'
	READ(*,*)(X2(I),I=1,7)
	WRITE(*,*)'Inserisci 7 valori:'
	READ(*,*)(X3(I),I=1,7)
	WRITE(*,*)'Inserisci 6 valori:'
 	READ(*,*)(X4(I),I=1,6)
	WRITE(*,*)'Inserisci 6 valori:'
 	READ(*,*)(X5(I),I=1,6)
	WRITE(*,*)'Inserisci 5 valori:'
 	READ(*,*)(X6(I),I=1,5)
	WRITE(*,*)'Inserisci 5 valori:'
 	READ(*,*)(X7(I),I=1,5)
	DO I=1,N3
		DO J=1,N3
			EPT(I,J)=0
			IF (I==J)THEN 
				EPT(I,J)=X1(I)
			END IF
			IF (J==I+1)THEN
				EPT(I,J)=X2(I)
			END IF 
			IF (I==J+1)THEN
				EPT(I,J)=X3(I)
			END IF
			IF(I==J+2)THEN
				EPT(I,J)=X4(I)
			END IF
			IF (J==I+2)THEN
				EPT(I,J)=X5(I)
			END IF
			IF (I==J+3)THEN
				EPT(I,J)=X6(I)
			END IF
			IF(J==I+3)THEN
				EPT(I,J)=X7(I)
			END IF
	END DO 
	END DO 
	END 

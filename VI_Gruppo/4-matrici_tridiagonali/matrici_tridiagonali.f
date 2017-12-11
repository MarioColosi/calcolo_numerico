	PROGRAM MATRICI_TRIDIAGONALI

* Scrivere il programma del metodo iterativo di Jacobi per risolvere il sistema lineare Ax=b , 
* dove A e’ una matrice tridiagonale, pentadiagonale o eptadiagonale, usando la tecnica di 
* memorizzazione di A in vettori.

	PARAMETER(N_MAX=500,N1=3,MAX_K=50,EPS=0.0001)
	REAL TRI(N_MAX,N_MAX)
	REAL X1(N_MAX),X2(N_MAX),X3(N_MAX)
	REAL B(N_MAX),X(N_MAX)
	LOGICAL ENDTEST
	WRITE(*,*)'La dimensione della matrice tridiagonale e'' N=4'
	
*	CALL INIT_TRI(TRI,N_MAX,N1,X1,X2,X3)
	CALL INIT_MATRIX(TRI,N_MAX,N1)
      WRITE(*,*)'Inserisci il vettore termini noti con 4 elementi'
	READ(*,*)(B(I),I=1,N1)

	I=1
	ENDTEST=.FALSE.
	X(:)=0.
	DO WHILE(.NOT.ENDTEST.AND.I.LT.2)
		CALL JACOBI_OTTIMIZZATO(TRI,B,X,N_MAX,N1,MAX_K,EPS,ENDTEST)
		I=I+1
      END DO
	WRITE(*,*)'Vettore soluzione:'
	WRITE(*,*)(X(I),I=1,N1)

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
			IF (I.EQ.J)THEN 
				TRI(I,J)=X1(I)
			END IF
			IF (J.EQ.I+1)THEN
				TRI(I,J)=X2(I)
			END IF 
			IF (J.EQ.I-1)THEN
				TRI(I,J)=X3(I-1)
			END IF
	END DO 
	END DO 
	END 

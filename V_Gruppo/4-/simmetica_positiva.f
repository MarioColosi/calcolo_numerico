	PROGRAM SIMMETRICA_POSITIVA
*  Risolvere il sistema lineare Ax=b , dove A e’ una matrice simmetrica definita positiva. 

	PARAMETER(N_MAX=500)
	REAL A(N_MAX,N_MAX),B(N_MAX),X(N_MAX)
	WRITE(*,*)'Inserisci la dimensione di N:'
	READ(*,*)N
	WRITE(*,*)'Inserisci i valori del vettore:'
	READ(*,*)(B(I),I=1,N)
	CALL BUILD_HANKEL(A,N_MAX,N)
	DO I=1,N
		WRITE(*,*)(A(I,J),J=1,N)
	END DO
	CALL GAUSS(A,B,N_MAX,N)
	CALL BACK(A,B,N_MAX,N,X)
	WRITE(*,*)'Il vettore soluzione e'':'
	WRITE(*,*)(X(I),I=1,N)
	END  

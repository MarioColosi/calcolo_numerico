	PROGRAM PRODOTTO_SCALARE
*.Dati due vettori x e y con n componenti calcolare il prodotto scalare
	PARAMETER(MAX_N=500)
	REAL X(MAX_N),Y(MAX_N),M
	WRITE(*,*)'Inserisci la dimensione del vettore:'
	READ(*,*)N
	CALL INIT_VETT(X,N)
	CALL INIT_VETT(Y,N)
	WRITE(*,*)'Il vettore X e'':'
	WRITE(*,*)(X(I),I=1,N)
	WRITE(*,*)'Il vettore Y e'':'
	WRITE(*,*)(Y(I),I=1,N)
	M=PRODOTTO(X,Y,N)
	WRITE(*,*)'Il prodotto scalare e'':',M
	END 

	SUBROUTINE INIT_VETT(X,N)
	REAL X(N)
	WRITE(*,*)'Inserisci i valori del vettore:'
	READ(*,*)(X(I),I=1,N)
	END 

	REAL FUNCTION PRODOTTO(X,Y,N)
	REAL X(N),Y(N)
	PRODOTTO=0
	DO I=1,N
		PRODOTTO=PRODOTTO+(X(I)*Y(I))
	END DO 
	END
		


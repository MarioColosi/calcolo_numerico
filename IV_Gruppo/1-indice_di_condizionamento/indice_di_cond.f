	PROGRAM INDICE_CONDIZIONAMENTO
* INVERSE(N,A,MDIM,A-1,MDIM)
* CALL LINRG (N, A, LDA, AINV, LDAINV)
* Print results: CALL WRRRN ('AINV', N, N, AINV, LDAINV, 0)

* Studiare, analizzando i risultati, l’indice di condizionamento di alcune classi 
* di matrici rispetto ad una delle norme studiate. Fare il grafico dell’andamento
* dell’indice di condizionamento al crescere dell’ordine n da 2 a 10 per alcune tra 
* le famiglie di matrici confrontabili, perché generate dalla stessa regola di costruzione. 
* Confrontare, analizzare e commentare i risultati. 
* (Per avere dei grafici migliori si consigli di usare anche la scala logaritmica).

	PARAMETER(NMAX=10)
	REAL A(NMAX,NMAX),COND
	N=2
	CALL BUILD_HILBERT(A,NMAX,N)
	RES=COND(A,NMAX,N)
	WRITE(*,*)N,' - INDICE DI CONDIZIONAMENTO',RES
	END

	SUBROUTINE PRINT_MATRIX(A,N_MAX,N)
	REAL A(N_MAX,N)
6	FORMAT(:10(' ',F8.3))
	DO I=1,N
		WRITE(*,6)(A(I,J),J=1,N)
		WRITE(*,*)
	END DO
	END 
	
     
    

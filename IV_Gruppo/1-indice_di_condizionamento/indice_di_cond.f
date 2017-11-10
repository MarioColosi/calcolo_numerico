	PROGRAM INDICE_CONDIZIONAMENTO
	USE MSIMSL
* INVERSE(N,A,MDIM,A-1,MDIM)
* CALL LINRG (N, A, LDA, AINV, LDAINV)
* Print results: CALL WRRRN ('AINV', N, N, AINV, LDAINV, 0)

* Studiare, analizzando i risultati, l’indice di condizionamento di alcune classi 
* di matrici rispetto ad una delle norme studiate. Fare il grafico dell’andamento
* dell’indice di condizionamento al crescere dell’ordine n da 2 a 10 per alcune tra 
* le famiglie di matrici confrontabili, perché generate dalla stessa regola di costruzione. 
* Confrontare, analizzare e commentare i risultati. 
* (Per avere dei grafici migliori si consigli di usare anche la scala logaritmica).

	PARAMETER(N_MAX=500)
	REAL A(N_MAX,N_MAX)
	REAL COND
	REAL AINV(N_MAX,N_MAX)
	DO N=2,10
		CALL BUILD_WILKINSON(A,N_MAX,N)
	CALL PRINT_MATRIX(A,N_MAX,N)
		CALL LINRG(N,A,N_MAX,AINV,N_MAX)
	WRITE(*,*)'MATRICE INVERSA'
	CALL PRINT_MATRIX(AINV,N_MAX,N)
		COND=NORMA_INF(A,N_MAX,N)*NORMA_INF(AINV,N_MAX,N)
		WRITE(3,*)COND
	END DO

	END

	SUBROUTINE PRINT_MATRIX(A,N_MAX,N)
	REAL A(N_MAX,N)
6	FORMAT(:10(' ',F8.3))
	DO I=1,N
		WRITE(*,6)(A(I,J),J=1,N)
		WRITE(*,*)
	END DO
	END 
	
     
    

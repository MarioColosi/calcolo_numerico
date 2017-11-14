	PROGRAM GRAFICI
	USE MSIMSL
* Fare il grafico dell'andamento delle norme matriciali di alcune famiglie
* di matrici confrontabili, perché generate dalla stessa regola di costruzione, 
* al crescere dell'ordine n. Analizzare e commentare i risultati.

	PARAMETER(N_MAX=500)
	REAL A(N_MAX,N_MAX) 
	REAL NORMA,NORMA_1,NORMA_2,NORMA_INF
	WRITE(*,*)'Inserisci la dimensione massima della matrice:'
	READ(*,*)MAX
	DO N=1,MAX
*		CALL BUILD_HILBERT(A,N_MAX,N)
		CALL BUILD_WILKINSON(A,N_MAX,N)
		NORMA=NORMA_1(A,N_MAX,N)
		WRITE(*,*)NORMA
	END DO 

      END 

	PROGRAM INDICE_CONDIZIONAMENTO
	INCLUDE LINRG
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
	REAL MATRIX(N_MAX,N_MAX)

	END 

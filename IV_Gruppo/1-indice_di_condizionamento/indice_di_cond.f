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
* FORMATO STAMPA TITOLO (2 STRINGHE DA 50 CARATTERI)
1	FORMAT(2X,52('_'),/,'  |',50X,'|',/,'  |',A,'|',/,
	*'  |',A,'|',/,'  |',50('_'),'|',/)
* FORMATO STAMPA TITOLO (1 STRINGA DA 50 CARATTERI)
2	FORMAT(/,2X,52('-'),/,2X,'# ',A,I2,/,2X,52('-'),/)
* FORMATO STRINGA PER INPUT DATI
3	FORMAT(2X,'[INPUT] ',A,$)
4	FORMAT(2X,A,I2,2X,A,F8.4)

	WRITE(*,1)'    STUDIO INDICE DELLINDICE DI CONDIZIONAMENTO   ',
	*		  '   DI ALCUNE CLASSI DI MATRICI AL CRESCERE DI N   '
	DO N=2,10
		WRITE(*,2)' MATRICE DI ORDINE N =',N
		CALL BUILD_HILBERT(A,NMAX,N)
		RES=COND(A,NMAX,N)
*		WRITE(3,*)RES
		WRITE(*,4)'N =',N,'INDICE DI CONDIZIONAMENTO = ',RES
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
	
     
    

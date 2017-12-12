	PROGRAM CONFRONTO_NORME
* Considerare vettori con un numero n di componenti da 2 a 15, 
* le cui componenti sono punti equidistanti dell'intervallo [-1,1]. 
* Calcolare le tre norme vettoriali al crescere di n e farne il confronto
* analizzando il grafico dei risultati.

	PARAMETER(MAX_N=15)
	REAL VETT(MAX_N)
	REAL NORMA(MAX_N-1)
	REAL NORMA1,NORMA2,NORMAINF

	DO N=2,MAX_N
		CALL INIT_VETT(VETT,N)
*		NORMA(N-1)=NORMA1(VETT,N)
		NORMA(N-1)=NORMA2(VETT,N)
*		NORMA(N-1)=NORMAINF(VETT,N)
	END DO
	CALL WRITE_FILE(NORMA,MAX_N-1)
	END

****** Subroutine di inizializzazione del vettore, con valori equidistanti compresi tra -1 e 1
      SUBROUTINE INIT_VETT(VETT,N)
	PARAMETER(K=-1,L=1)
	REAL VETT(N)
	REAL DISTANZA
	DISTANZA=FLOAT((ABS(K)+ABS(L)))/N
	VETT(1)=K
	DO I=2,N-1
		VETT(I)=VETT(I-1)+DISTANZA
	END DO
	VETT(N)=L
	END	
	
****** Subroutine di scrittura su file dei valori del vettore NORMA	
	SUBROUTINE WRITE_FILE(NORMA,N)
	REAL NORMA(N)
	DO I=1,N
		WRITE(3,*)NORMA(I)
	END DO
	END
	



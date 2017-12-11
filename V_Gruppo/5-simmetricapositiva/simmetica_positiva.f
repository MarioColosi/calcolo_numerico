	PROGRAM SIMMETRICA_POSITIVA
*  Risolvere il sistema lineare Ax=b , dove A e’ una matrice simmetrica definita positiva. 

	PARAMETER(N_MAX=500)
	REAL A(N_MAX,N_MAX),B(N_MAX),X(N_MAX)

* FORMATO STAMPA TITOLO (2 STRINGHE DA 50 CARATTERI)
1	FORMAT(2X,52('_'),/,'  |',50X,'|',/,'  |',A,'|',/,
	*'  |',A,'|',/,'  |',50('_'),'|',/)
* FORMATO STAMPA TITOLO (1 STRINGA DA 50 CARATTERI)
2	FORMAT(/,2X,52('-'),/,2X,'# ',A,/,2X,52('-'),/)
* FORMATO STRINGA PER INPUT DATI
3	FORMAT(2X,'[INPUT] ',A,$)

	WRITE(*,1)'      RISOLUZIONE DI UN SISTEMA LINEARE AX=B      ',
	*		  'DOVE A E'' UNA MATRICE SIMMETRICA DEFINITA POSITIVA'

	WRITE(*,3)'Inserisci la dimensione di N: '
	READ(*,*)N
	WRITE(*,3)'Inserisci i valori del vettore: '
	READ(*,*)(B(I),I=1,N)
	CALL BUILD_TOEPLIZ(A,N_MAX,N)
	WRITE(*,2)'MATRICE DI INPUT'
	DO I=1,N
		WRITE(*,*)(A(I,J),J=1,N)
	END DO
	CALL GAUSS(A,B,N_MAX,N)
	CALL BACK(A,B,N_MAX,N,X)
	WRITE(*,2)'VETTORE SOLUZIONE'
	WRITE(*,*)(X(I),I=1,N)
	END

	PROGRAM SISTEMA_LINEARE
	USE MSIMSL

* Risolvere un sistema lineare Ax=b con il metodo di Gauss.
* La matrice A dei coefficienti deve appartenere ad una delle famiglie
* di matrici viste nel Gruppo III degli esercizi. La iesima componente 
* del vettore b dei termini noti deve essere generato come somma degli 
* elementi della i-esima riga di A. In tal caso la soluzione è il vettore 
* con tutte le componenti uguali ad 1. Calcolare l’errore relativo tra la 
* soluzione data dal calcolatore e la soluzione esatta. Analizzare i risultati ottenuti.

	PARAMETER(N_MAX=500)
	REAL A(N_MAX,N_MAX+1),X(N_MAX),DELTA(N_MAX), ERR, NORMAINF

* FORMATO STAMPA TITOLO (2 STRINGHE DA 50 CARATTERI)
1	FORMAT(2X,52('_'),/,'  |',50X,'|',/,'  |',A,'|',/,
	*'  |',A,'|',/,'  |',50('_'),'|',/)
* FORMATO STAMPA TITOLO (1 STRINGA DA 50 CARATTERI)
2	FORMAT(/,2X,52('-'),/,2X,'# ',A,/,2X,52('-'),/)
* FORMATO STRINGA PER INPUT DATI
3	FORMAT(2X,'[INPUT] ',A,$)


	WRITE(*,1)'      SISTEMA DI EQUAZIONI LINEARI CON GAUSS      ',
	*'        E ERRORE RELATIVO SULLA SOLUZIONE         '
	WRITE(*,3)'Inserisci la dimensione della matrice (N>5): '
	READ(*,*)N
	CALL BUILD_HILBERT(A,N_MAX,N)
	CALL INIT_B(A,N_MAX,N)
11	FORMAT(:10(' ',F8.3))
	WRITE(*,2)'MATRICE DI INPUT CON VETTORE DEI T.N.'
	DO I=1,N
		WRITE(*,11)(A(I,J),J=1,N+1)
		WRITE(*,*)
	END DO 
	CALL GAUSS(A,A(1,N+1),N_MAX,N)
	WRITE(*,2)'FATTORIZZAZIONE GAUSS'
	DO I=1,N
		WRITE(*,11)(A(I,J),J=1,N+1)
		WRITE(*,*)
	END DO
	CALL BACK(A,A(1,N+1),N_MAX,N,X)
5	FORMAT('  X',I2,' = ',F16.8)
	WRITE(*,2)'SOLUZIONI DEL SISTEMA'
	DO I=1,N
		WRITE(*,5)I,X(I)
	END DO
	CALL CALCOLA_DELTA(X,DELTA,N)
      ERR=NORMAINF(DELTA,N)/NORMAINF(X,N)
	WRITE(*,*)
	WRITE(*,*)' ----------------------------------------------------'
	WRITE(*,*)' # RISULTATO'
	WRITE(*,*)' Errore relativo della soluzione:',ERR
	WRITE(*,*)' ----------------------------------------------------'
	WRITE(*,*)
	END 

	SUBROUTINE INIT_B(A,N_MAX,N)
	REAL A(N_MAX,N)
	REAL SOMMA
	DO I=1,N
	    SOMMA=0
		DO J=1,N
			SOMMA=SOMMA+A(I,J)
		END DO
		A(I,N+1)=SOMMA
	END DO
	END 

	SUBROUTINE CALCOLA_DELTA(X,DELTA,N)
	REAL X(N),DELTA(N)
	DO I=1,N
		DELTA(I)=1-X(I)
	END DO
	END
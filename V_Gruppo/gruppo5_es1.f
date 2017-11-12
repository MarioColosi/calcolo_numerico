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
	REAL A(N_MAX,N_MAX+1)
	WRITE(*,*)'Inserisci la dimensione della matrice (N>5):'
	READ(*,*)N
	CALL BUILD_HILBERT(A,N_MAX,N)
	CALL INIT_B(A,N_MAX,N)
1	FORMAT(:10(' ',F8.3))
	WRITE(*,*)'MATRICE:'
	DO I=1,N
		WRITE(*,1)(A(I,J),J=1,N+1)
		WRITE(*,*)
	END DO 
	CALL GAUSS(A,A(1,N+1),N_MAX,N)
	WRITE(*,*)'FATTORIZZAZIONE GAUSS:'
	DO I=1,N
		WRITE(*,1)(A(I,J),J=1,N+1)
		WRITE(*,*)
	  END DO 

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


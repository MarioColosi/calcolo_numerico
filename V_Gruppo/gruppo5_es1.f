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
	REAL HILB(N_MAX,N_MAX)
	REAL X(N_MAX)
	WRITE(*,*)'Inserisci la dimensione di N>5:'
	READ(*,*)N
	CALL BUILD_HILBERT(HILB,N_MAX,N)
	CALL INIT_X(X,N,N_MAX,HILB)
	WRITE(*,*)'MATRICE:'
	DO I=1,N
		WRITE(*,*)(HILB(I,J),J=1,N)
		WRITE(*,*)
	END DO 
	WRITE(*,*)'VETTORE:'
	DO I=1,N
		WRITE(*,*)(X(I))
	END DO

	END 

	SUBROUTINE INIT_X(X,N_MAX,N,A)
	REAL X(N_MAX)
	REAL SOMMA=0
	DO I=1,N
		DO J=1,N
			DO K=1,N
				SOMMA=SOMMA+A(J,K)
				X(I)=SOMMA
			END DO
		END DO
	END DO
	END 


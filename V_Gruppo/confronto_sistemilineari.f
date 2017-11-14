	PROGRAM CONFRONTO_SISTEMILINEARI
* Risolvere un sistema lineare Ax=b con il metodo di Gauss. 
* Perturbare almeno un elemento di A e risolvere nuovamente il sistema mantenendo
* lo stesso vettore dei termini noti. Confrontare la soluzione ottenuta con quella 
* del sistema non perturbato e spiegare quello che accade, evidenziando la relazione 
* tra l’errore relativo sui dati e quello sulla soluzione.

	PARAMETER(N_MAX=500)
	REAL A(N_MAX,N_MAX)
	REAL B(N_MAX)
	WRITE(*,*)'Inserisci la dimensione della matrice e del vettore:'
	READ(*,*)N
	CALL BUILD_HILBERT(A,N_MAX,N)
	WRITE(*,*)'La matrice e'':'
	DO I=1,N
		WRITE(*,*)(A(I,J),J=1,N)
	END DO
	CALL INIT_B(B,N)
	WRITE(*,*)'Il vettore e'':'
	WRITE(*,*)(X(I),I=1,N)
	CALL GAUSS(A,B,N_MAX,N)
	WRITE(*,*)'SONO ARRIVATO FINO A QUA'
	A(1,1)=6
	CALL GAUSS(A,B,N_MAX,N)
	WRITE(*,*)'La matrice perturbata di un elemento e'':'
	DO I=1,N
		WRITE(*,*)(A(I,J),J=1,N)
	END DO

	END 

	SUBROUTINE INIT_X(X,N)
	REAL X(N)
	WRITE(*,*)'Inerisci i valori del vettore:'
	READ(*,*)(X(I),I=1,N)
	END


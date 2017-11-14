	PROGRAM CONFRONTO_SISTEMILINEARI
* Risolvere un sistema lineare Ax=b con il metodo di Gauss. 
* Perturbare almeno un elemento di A e risolvere nuovamente il sistema mantenendo
* lo stesso vettore dei termini noti. Confrontare la soluzione ottenuta con quella 
* del sistema non perturbato e spiegare quello che accade, evidenziando la relazione 
* tra l�errore relativo sui dati e quello sulla soluzione.

	PARAMETER(N_MAX=500,ERR=0.01)
	REAL A(N_MAX,N_MAX),P(N_MAX,N_MAX),D_M(N_MAX,N_MAX)
	REAL B(N_MAX),B(N_MAX)
	REAL ERR_SOLU, ERR_DATI
	WRITE(*,*)'Inserisci la dimensione della matrice e del vettore:'
	READ(*,*)N
	CALL BUILD_WILKINSON(A,N_MAX,N)
	WRITE(*,*)'La matrice e'':'
	DO I=1,N
		WRITE(*,*)(A(I,J),J=1,N)
	END DO
	CALL INIT_B(B,N)
	CALL INIT_B(B2,N)
	WRITE(*,*)'Il vettore e'':'
	WRITE(*,*)(B(I),I=1,N)
	CALL GAUSS(A,B,N_MAX,N)
	CALL BACK(A,B,N_MAX,N)
	WRITE(*,*)'GAUSS + BACK:'
	DO I=1,N
		WRITE(*,*)(A(I,J),J=1,N)
	END DO	
	CALL BUILD_WILKINSON(A,N_MAX,N)
	CALL BUILD_WILKINSON(P,N_MAX,N)
	P(1,1)=P(1,1)+ERR
	CALL GAUSS(P,B2,N_MAX,N)
	WRITE(*,*)'La matrice perturbata di un elemento e'':'
	DO I=1,N
		WRITE(*,*)(P(I,J),J=1,N)
	END DO
	D_M(I,J)=
	ERR_DATI=NORMA_INF(P,N_MAX,N)/NORMA_INF(A,N_MAX,N)
	ERR_SOLU=NORMAINF(B2,N)/NORMAINF(B,N)

	END 

	SUBROUTINE INIT_B(X,N)
	REAL X(N)
	WRITE(*,*)'Inerisci i valori del vettore:'
	READ(*,*)(X(I),I=1,N)
	END


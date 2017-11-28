	PROGRAM CONFRONTO_SISTEMILINEARI
	USE MSIMSL
* Risolvere un sistema lineare Ax=b con il metodo di Gauss. 
* Perturbare almeno un elemento di A e risolvere nuovamente il sistema mantenendo
* lo stesso vettore dei termini noti. Confrontare la soluzione ottenuta con quella 
* del sistema non perturbato e spiegare quello che accade, evidenziando la relazione 
* tra l’errore relativo sui dati e quello sulla soluzione.

	PARAMETER(N_MAX=500,ERR=0.01)
	REAL A(N_MAX,N_MAX),A2(N_MAX,N_MAX),DELTA(N_MAX,N_MAX),D_V(N_MAX)
	REAL B(N_MAX),B2(N_MAX),X(N_MAX),X2(N_MAX)
	REAL NORMA_INF,NORMAINF
	REAL ERR_SOLU,ERR_DATI

* FORMATO STAMPA TITOLO (2 STRINGHE DA 50 CARATTERI)
1	FORMAT(2X,52('_'),/,'  |',50X,'|',/,'  |',A,'|',/,
	*'  |',A,'|',/,'  |',50('_'),'|',/)
* FORMATO STAMPA TITOLO (1 STRINGA DA 50 CARATTERI)
2	FORMAT(/,2X,52('-'),/,2X,'# ',A,/,2X,52('-'),/)
* FORMATO STRINGA PER INPUT DATI
3	FORMAT(2X,'[INPUT] ',A,$)

	WRITE(*,1)'       RISOLUZIONE DI UN SISTEMA CON GAUSS        ',
	*		  ' PERTUBAZIONE DEI DATI INIZIALI E ANALISI ERRORI  '
	WRITE(*,3)'Inserisci la dimensione della matrice e del vettore: '
	READ(*,*)N
	CALL BUILD_HILBERT(A,N_MAX,N)
	WRITE(*,2)'MATRICE DI INPUT'
	DO I=1,N
		WRITE(*,*)(A(I,J),J=1,N)
	END DO
	CALL INIT_B(B,B2,N)
	WRITE(*,2)'VETTORE DI INPUT'
	WRITE(*,*)(B(I),I=1,N)

	CALL GAUSS(A,B,N_MAX,N)
	WRITE(*,2)'METODO DI GAUSS'
	DO I=1,N
		WRITE(*,*)(A(I,J),J=1,N)
	END DO
	CALL BACK(A,B,N_MAX,N,X)
	WRITE(*,2)'BACK: SOLUZIONI'
	DO I=1,N
		WRITE(*,*)' X =',X(I)
	END DO
     	
	WRITE(*,*)
	WRITE(*,1)'        RISOLUZIONE DEL MEDESIMO SISTEMA          ',
	*          '           DOPO PERTURBAZIONE SUI DATI            '
	 
	CALL BUILD_HILBERT(A,N_MAX,N)
	CALL BUILD_HILBERT(A2,N_MAX,N)
	A2(1,1)=A2(1,1)+ERR
	WRITE(*,2)'MATRICE DI INPUT PERTURBATA'
	DO I=1,N
		WRITE(*,*)(A2(I,J),J=1,N)
	END DO
	WRITE(*,2)'VETTORE DI INPUT'
	WRITE(*,*)(B2(I),I=1,N)

	CALL DIFF_M(A,A2,DELTA,N_MAX,N)
	ERR_DATI=NORMA_INF(DELTA,N_MAX,N)/NORMA_INF(A,N_MAX,N)
	
      CALL GAUSS(A2,B2,N_MAX,N)
      WRITE(*,2)'METODO DI GAUSS'
	DO I=1,N
		WRITE(*,*)(A2(I,J),J=1,N)
	END DO
	CALL BACK(A2,B2,N_MAX,N,X2)
	WRITE(*,2)'BACK: SOLUZIONI'
	DO I=1,N
		WRITE(*,*)' X =',X2(I)
	END DO

	CALL DELTA_VETT(X,X2,D_V,N)
	ERR_SOLU=NORMAINF(D_V,N)/NORMAINF(B,N)
	\ 
      WRITE(*,1)'        RISULTATI: ERRORI RELATIVI SUI DATI       ',
	*		  '                   E SULLA SOLUZIONE              '
	WRITE(*,*)' Errore relativo sui dati:',ERR_DATI
	WRITE(*,*)' Errore sulla soluzione:',ERR_SOLU
	WRITE(*,*)
	END 

	SUBROUTINE INIT_B(X1,X2,N)
	REAL X1(N),X2(N)
* FORMATO STRINGA PER INPUT DATI
3	FORMAT(2X,'[INPUT] ',A,$)
	WRITE(*,*)
	WRITE(*,3)'Inserisci i valori del vettore: '
	READ(*,*)(X1(I),I=1,N)
	DO I=1,N
		X2(I)=X1(I)
	END DO
	END

	SUBROUTINE DIFF_M(A,B,C,N_MAX,N)
	REAL A(N_MAX,N),B(N_MAX,N),C(N_MAX,N)
	DO I=1,N
		DO J=1,N
			C(I,J)=A(I,J)-B(I,J)
		END DO 
	END DO
	END 

	SUBROUTINE DELTA_VETT(A,B,DELTA,N)
	REAL A(N),B(N),DELTA(N)
	DO I=1,N
		DELTA(I)=A(I)-B(I)
	END DO
	END
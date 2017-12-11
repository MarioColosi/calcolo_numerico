	PROGRAM PRODOTTO_SCALARE
*.

	PARAMETER(MAX_N=500)
	REAL X(MAX_N),Y(MAX_N),M

*    Sottotitolo (INPUT: 1 stringa da 50 caratteri)
2	FORMAT(/,2X,52('-'),/,2X,'  ',A,/,2X,52('-'),/)
*    Messaggio di input (INPUT: 1 stringa, 1 intero)
3	FORMAT(2X,'[INPUT] ',A,'[MAX = ',I3,']: ',$)
																
      WRITE(*,2)'       PRODOTTO SCALARE TRA DUE VETTORI           '

	WRITE(*,3)'Inserisci la dimensone dei vettore: ', MAX_N
	READ(*,*)N
	WRITE(*,*)
	WRITE(*,*)' [INPUT] VETTORE X'
	CALL INIT_VETT(X,N)
	WRITE(*,*)
	WRITE(*,*)' [INPUT] VETTORE Y'
	CALL INIT_VETT(Y,N)
	WRITE(*,*)
	WRITE(*,*)'--------------------------------------------'
	WRITE(*,*)' [INPUT] VETTORE X'
	WRITE(*,*)(X(I),I=1,N)
	WRITE(*,*)
	WRITE(*,*)' [INPUT] VETTORE Y'
	WRITE(*,*)(Y(I),I=1,N)
	M=PRODOTTO(X,Y,N)
	WRITE(*,*)
	WRITE(*,*)' [RESULT] Il prodotto scalare e'':',M
	WRITE(*,*)
	END 

****** Subroutine di inizializzazione di un vettore di dimensione N
	SUBROUTINE INIT_VETT(X,N)
	REAL X(N)
 3	FORMAT(2X,'[INPUT] ',A,'[N =',I3,']: ',$)
	WRITE(*,3)'Inserisci gli elementi del vettore',N
	READ(*,*)(X(I),I=1,N)
	END 

****** Funzione di calcolo del prodotto scalare tra due vettori
	REAL FUNCTION PRODOTTO(X,Y,N)
	REAL X(N),Y(N)
	PRODOTTO=0
	DO I=1,N
		PRODOTTO=PRODOTTO+(X(I)*Y(I))
	END DO 
	END
		


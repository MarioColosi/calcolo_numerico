	PROGRAM LAGR3
	PARAMETER(N_MAX=500)
	REAL X(N_MAX), Y(N_MAX),ERR,NORMAINF 
	
*    Messaggio di input (INPUT: 1 stringa, 1 intero)
3	FORMAT(2X,'[INPUT] ',A,$)

      WRITE(*,3)'Inserisci il numero di punti di graficazione: '
	READ(*,*)N

	DO I=1,N
		READ(3,*)X(I),Y(I)
	END DO
	ERR=NORMAINF(Y,N)
	WRITE(*,*)' [RESULT] La norma del vettore degli errori e''', ERR
	END
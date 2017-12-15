      PROGRAM LAGR2
	PARAMETER(N_MAX=500)
	REAL X(N_MAX), Y(N_MAX),Y2(N_MAX) 

*    Sottotitolo (INPUT: 1 stringa da 50 caratteri)
2	FORMAT(/,2X,52('-'),/,2X,'  ',A,/,2X,52('-'),/)
*    Messaggio di input (INPUT: 1 stringa, 1 intero)
3	FORMAT(2X,'[INPUT] ',A,$)

      WRITE(*,3)'Inserisci il numero di punti di graficazione: '
	READ(*,*)N

	DO I=1,N
		READ(3,*)X(I),Y(I)
	END DO
	DO I=1,N
		READ(3,*)X(I),Y2(I)
	END DO
	DO I=1,N
		R=Y(I)-Y2(I)
		WRITE(3,*)X(I),R
	write(*,*)I
	END DO
	END



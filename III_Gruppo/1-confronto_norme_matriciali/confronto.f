	PROGRAM CONFRONTO
	USE MSIMSL
* Confrontare su alcune matrici, con ordine n > 7,
* il valore delle quattro norme matriciali studiate.
* Usare la routine della libreria IMSL per il calcolo del raggio spettrale.
* Se non si ha a disposizione la subroutine per il calcolo del raggio spettrale, 
* considerare solo la norma di Frobenius.
	PARAMETER(N_MAX=500)
	REAL M(N_MAX,N_MAX)
	REAL RIS,NORMA_1,NORMA_2,NORMA_INF,NORMA_FROBENIUS

*    Titolo (INPUT: 2 stringhe da 50 caratteri)
1	FORMAT(2X,52('_'),/,'  |',50X,'|',/,'  |',A,'|',/,
	*'  |',A,'|',/,'  |',50('_'),'|',/)
*    Sottotitolo (INPUT: 1 stringa da 50 caratteri)
2	FORMAT(/,2X,52('-'),/,2X,'  ',A,/,2X,52('-'),/)
*    Messaggio di input (INPUT: 1 stringa)
3	FORMAT(2X,'[INPUT] ',A,$)

	WRITE(*,1)'     CONFRONTO DELLE QUATTRO NORME MATRICIALI     ',
	*		  '            SU MATRICI CON ORDINE N>7             '
	WRITE(*,3)'Inserisci la dimensione della matrice (N>7): '
	READ(*,*)N
	WRITE(*,*)
*    Inizializzazione della matrice
*	CALL BUILD_WILKINSON(M,N_MAX,N)
*	CALL BUILD_VANDERMONDE(M,N_MAX,N)
	CALL BUILD_HILBERT(M,N_MAX,N)

*    Stampa della matrice
6	FORMAT(:10(' ',F8.3))
	DO I=1,N
		WRITE(*,6)(M(I,J),J=1,N)
		WRITE(*,*)
	END DO 
	WRITE(*,*)
*    Calcolo delle norme matriciali
	RIS=NORMA_1(M,N_MAX,N)
	WRITE(*,*)' [RESULT] La norma 1 e'':',RIS
	RIS=NORMA_2(M,N_MAX,N)
	WRITE(*,*)' [RESULT] La norma 2 e'':',RIS
	RIS=NORMA_INF(M,N_MAX,N)
	WRITE(*,*)' [RESULT] La norma INF e'':',RIS
	RIS=NORMA_FROBENIUS(M,N_MAX,N)
	WRITE(*,*)' [RESULT] La norma Frobenius e'':',RIS
	WRITE(*,*)
	END

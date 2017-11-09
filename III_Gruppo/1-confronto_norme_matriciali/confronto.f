	PROGRAM CONFRONTO
	USE MSIMSL
* Confrontare su alcune matrici, con ordine n > 7,
* il valore delle quattro norme matriciali studiate.
* Usare la routine della libreria IMSL per il calcolo del raggio spettrale.
* Se non si ha a disposizione la subroutine per il calcolo del raggio spettrale, 
* considerare solo la norma di Frobenius.

	PARAMETER(N_MAX=500)
	REAL M(N_MAX,N_MAX)
	REAL RIS,NORMA_1,NORMA_2,NORMA_INF
	WRITE(*,*)'Inserisci la dimensione della matrice, N>7!'
	READ(*,*)N
*	CALL BUILD_WILKINSON(M,N_MAX,N)
*	CALL BUILD_VANDERMONDE(M,N_MAX,N)
	CALL BUILD_HILBERT(M,N_MAX,N)
6	FORMAT(:10(' ',F8.3))
	DO I=1,N
		WRITE(*,6)(M(I,J),J=1,N)
		WRITE(*,*)
	END DO 
	RIS=NORMA_1(M,N_MAX,N)
	WRITE(*,*)'La norma 1 e'':',RIS
	RIS=NORMA_2(M,N_MAX,N)
	WRITE(*,*)'La norma 2 e'':',RIS
	RIS=NORMA_INF(M,N_MAX,N)
	WRITE(*,*)'La norma INF e'':',RIS
	END

	

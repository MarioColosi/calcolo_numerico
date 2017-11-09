	PROGRAM CONFRONTO

* Confrontare su alcune matrici, con ordine n > 7,
* il valore delle quattro norme matriciali studiate.
* Usare la routine della libreria IMSL per il calcolo del raggio spettrale.
* Se non si ha a disposizione la subroutine per il calcolo del raggio spettrale, 
* considerare solo la norma di Frobenius.

	PARAMETER(N_MAX=500)
	REAL M(N_MAX,N_MAX)
	WRITE(*,*)'Inserisci la dimensione della matrice, N>7!'
	READ(*,*)N
	END

	SUBROUTINE INIT_MATRIX(N,)
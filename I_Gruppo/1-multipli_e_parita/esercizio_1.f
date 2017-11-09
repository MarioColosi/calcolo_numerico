	PROGRAM esercizio_1
* 1. Dati due numeri interi dire se il primo e' multiplo del secondo.
*    Caso particolare dato un numero intero dire se � pari o dispari.

	WRITE(*,*)'*** MULTIPLO ***'
      WRITE(*,*)'Inserire un numero intero:'
	READ(*,*) N
	WRITE(*,*)'Inserire un numero intero:'
      READ(*,*) M
      L=N/M
	IF(L*M.EQ.N)THEN
		WRITE(*,*)'Il primo numero e'' multiplo del secondo!'
	ELSE
		WRITE(*,*)'Il primo numero non e'' multiplo del secondo!'
	END IF
	WRITE(*,*)'*** PARI E DISPARI ***'
	WRITE(*,*)'Inserire un numero intero:'
	READ(*,*) N
	L=N/2
	IF(L*2.EQ.N)THEN
		WRITE(*,*)'Il numero e'' pari!'
	ELSE
		WRITE(*,*)'Il numero e'' dispari!'
	END IF
	END

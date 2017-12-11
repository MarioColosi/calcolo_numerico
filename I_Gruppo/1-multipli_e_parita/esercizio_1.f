	PROGRAM multipli_e_parita
* 1. Dati due numeri interi dire se il primo e' multiplo del secondo.
<<<<<<< HEAD
*    Caso particolare dato un numero intero dire se e' pari o dispari.
=======
*    Caso particolare: dato un numero intero dire se e' pari o dispari.
>>>>>>> 9b63569f1f8179eb489f1e964a55366d2c3f0c9f

*    Titolo (INPUT: 1 stringa da 50 caratteri)
2	FORMAT(/,2X,52('-'),/,2X,'  ',A,/,2X,52('-'),/)
*    Messaggio di input (INPUT: 1 stringa)
3	FORMAT(2X,'[INPUT] ',A,$)

****** MULTIPLI **************************************************************************** 
	WRITE(*,2)'               MULTIPLI E PARITA''                '
      WRITE(*,3)'Inserire un numero intero A (dividendo): '
	READ(*,*) N
	WRITE(*,3)'Inserire un numero intero B (divisore): '
      READ(*,*) M
*    Si divide il primo numero per il secondo. Se moltiplicando il risultato per il divisore si 
*    riottiene il dividendo, allora si puo' affermare che il primo numero e' multiplo del secondo. 
      L=N/M
	IF(L*M.EQ.N)THEN
		WRITE(*,*)' [RESULT] A e'' multiplo di B!'
	ELSE
		WRITE(*,*)' [RESULT] A non e'' multiplo di B!'
	END IF

****** PARITA' *****************************************************************************
	WRITE(*,2)'                 PARI E DISPARI                  '
	WRITE(*,3)'Inserire un numero intero: '
	READ(*,*) N
*    Si divide il numero inserito per 2 e si moltiplica il risultato per 2, se si riottiene
*    il numero iniziale, allora esso e' pari. Viceversa e' dispari.
	L=N/2
	IF(L*2.EQ.N)THEN
		WRITE(*,*)' [RESULT] Il numero e'' pari!'
	ELSE
		WRITE(*,*)' [RESULT] Il numero e'' dispari!'
	END IF
********************************************************************************************
	WRITE(*,*)
	END

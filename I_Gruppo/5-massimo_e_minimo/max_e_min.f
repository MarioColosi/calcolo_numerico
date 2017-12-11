      PROGRAM MASSIMO_E_MINIMO
<<<<<<< HEAD
*Trovare il massimo (o minimo) di un insieme di numeri. 
*Trasformare il programma in una funzione. 
=======
* 5. Trovare il massimo (o minimo) di un insieme di numeri. Trasformare il programma in una funzione.
>>>>>>> 9b63569f1f8179eb489f1e964a55366d2c3f0c9f
      PARAMETER(MAX_N=100)
      REAL X(MAX_N),MINIMO,MASSIMO

*    Titolo (INPUT: 1 stringa da 50 caratteri)
2	FORMAT(/,2X,52('-'),/,2X,'  ',A,/,2X,52('-'),/)
*    Messaggio di input (INPUT: 1 stringa)
3	FORMAT(2X,'[INPUT] ',A,$)
																 
	WRITE(*,2)'        MASSIMO E MINIMO DI N NUMERI INTERI         '
      WRITE(*,3)'Di quanti numeri vuoi calcolare massimo e minimo?: '
      READ(*,*)N
      WRITE(*,*)
      IF(N.GT.MAX_N)THEN
          WRITE(*,*)' [ERRORE] Hai inserito un numero troppo alto!'
          STOP
      END IF
      CALL INIT_X(X,N)
      RESULT = MINIMO(X,N)
      WRITE(*,*)' [RISULTATO] Il minimo e'':',RESULT
      RESULT = MASSIMO(X,N)
      WRITE(*,*)' [RISULTATO] Il massimo e'':',RESULT
	WRITE(*,*)
      END

****** Subroutine di inizializzazione del vettore contenente gli elementi di cui si vuole trovare massimo e minimo
      SUBROUTINE INIT_X(X,N)
      REAL X(N)
 3	FORMAT(2X,'[INPUT] ',A,'[N =',I3,']: ',$)
	WRITE(*,3)'Inserisci i numeri di cui vuoi calcolare max e min: ',N
      READ(*,*)(X(I),I=1,N)
      END

****** Funzione di calcolo del minimo di un vettore di dimensione N
      REAL FUNCTION MINIMO(X,N)
      REAL X(N)
      MINIMO = X(1)
      DO I=2,N
        IF(MINIMO.GT.X(I))MINIMO = X(I)
      END DO
      END

****** Funzione di calcolo del massimo di un vettore di dimensione N
      REAL FUNCTION MASSIMO(X,N)
      REAL X(N)
      MASSIMO = X(1)
      DO I=2,N
        IF(MASSIMO.LT.X(I))MASSIMO = X(I)
      END DO
      END

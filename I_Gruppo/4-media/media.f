      PROGRAM CALCOLAMEDIA
* 4 - Scrivere un programma che calcola la media di n numeri interi (o reali). Trasformare il programma in una funzione.
      PARAMETER(MAX_N=100)
      REAL X(MAX_N),MEDIA

*    Sottotitolo (INPUT: 1 stringa da 50 caratteri)
2	FORMAT(/,2X,52('-'),/,2X,'  ',A,/,2X,52('-'),/)
*    Messaggio di input (INPUT: 1 stringa, 1 intero)
3	FORMAT(2X,'[INPUT] ',A,'[MAX = ',I3,']: ',$)
																	
      WRITE(*,2)'            MEDIA DI N NUMERI INTERI              '
	WRITE(*,3)'Di quanti numeri vuoi fare la media? ',MAX_N
      READ(*,*)N
      IF(N.GT.MAX_N)THEN
          WRITE(*,*)' [ERRORE] Hai inserito un numero troppo alto!'
          STOP
      END IF
      CALL INIT_X(X,N)
      RESULT = MEDIA(X,N)
      WRITE(*,*)' [RISULTATO] La media dei numeri e''',RESULT
	WRITE(*,*)
      END

****** Subroutine di inizializzazione del vettore contenente gli elementi di cui fare la media
      SUBROUTINE INIT_X(X,N)
      REAL X(N)
 3	FORMAT(2X,'[INPUT] ',A,'[N =',I3,']: ',$)
	WRITE(*,3)'Inserisci i numeri di cui vuoi fare la media',N
      READ(*,*)(X(I),I=1,N)
      END

****** Funzione di calcolo della media
      REAL FUNCTION MEDIA(X,N)
      REAL X(N)
      MEDIA = 0.0
      DO I=1,N
        MEDIA = MEDIA+X(I)
      END DO
      MEDIA=MEDIA/N
      END

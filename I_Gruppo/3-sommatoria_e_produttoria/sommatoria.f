
      PROGRAM SOMMATORIA
* 3. Scrivere i programmi per la sommatoria di n numeri reali e complessi.     
      PARAMETER(MAX_N=100)
      REAL X(MAX_N)

*    Sottotitolo (INPUT: 1 stringa da 50 caratteri)
2	FORMAT(/,2X,52('-'),/,2X,'  ',A,/,2X,52('-'),/)
*    Messaggio di input (INPUT: 1 stringa, 1 intero)
3	FORMAT(2X,'[INPUT] ',A,'[MAX = ',I3,']: ',$)

	WRITE(*,2)'         SOMMATORIA DI N NUMERI INTERI            '
      WRITE(*,3)'Quanti numeri vuoi sommare? ',MAX_N
      READ(*,*)N
      IF(N.GT.MAX_N)THEN
          WRITE(*,*)' [ERRORE] Hai inserito un numero troppo alto!'
          STOP
      END IF
      CALL INIT_X(X,N)
      CALL SUM(X,N,RESULT)
      WRITE(*,*)' [RISULTATO] La sommatoria dei numeri e''',RESULT
	WRITE(*,*)
      END

****** Subroutine di inizializzazione del vettore contenente gli elementi da sommare
      SUBROUTINE INIT_X(X,N)
      REAL X(N)
 3	FORMAT(2X,'[INPUT] ',A,'[N =',I3,']: ',$)
	WRITE(*,3)'Inserisci i numeri da sommare',N
      READ(*,*)(X(I),I=1,N)
      END

****** Subroutine di somma degli elementi di un vettore
      SUBROUTINE SUM(X,N,RESULT)
      REAL X(N)
      RESULT = 0
      DO I=1,N
		RESULT = RESULT + X(I)
      END DO
      END

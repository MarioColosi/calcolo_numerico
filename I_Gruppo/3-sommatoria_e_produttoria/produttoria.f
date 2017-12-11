      PROGRAM PRODUTTORIA
<<<<<<< HEAD
* Scrivere i programmi per la sommatoria e la produttoria di n numeri. 
=======
* 3. Scrivere i programmi per la produttoria di n numeri reali e complessi.
>>>>>>> 9b63569f1f8179eb489f1e964a55366d2c3f0c9f
      PARAMETER(MAX_N=100)
      REAL X(MAX_N)

*    Sottotitolo (INPUT: 1 stringa da 50 caratteri)
2	FORMAT(/,2X,52('-'),/,2X,'  ',A,/,2X,52('-'),/)
*    Messaggio di input (INPUT: 1 stringa, 1 intero)
3	FORMAT(2X,'[INPUT] ',A,'[MAX = ',I3,']: ',$)

	WRITE(*,2)'         PRODUTTORIA DI N NUMERI INTERI           '
      WRITE(*,3)'Quanti numeri vuoi moltiplicare? ',MAX_N
      READ(*,*)N
      WRITE(*,*)
      IF(N.GT.MAX_N)THEN
          WRITE(*,*)' [ERRORE] Hai inserito un numero troppo alto!'
          STOP
      END IF
      CALL INIT_X(X,N)
      CALL MUL(X,N,RESULT)
      WRITE(*,*)' [RISULTATO] La produttoria dei numeri e''',RESULT
	WRITE(*,*)
      END

****** Subroutine di inizializzazione del vettore contenente gli elementi da moltiplicare
      SUBROUTINE INIT_X(X,N)
      REAL X(N)
 3	FORMAT(2X,'[INPUT] ',A,'[N =',I3,']: ',$)
	WRITE(*,3)'Inserisci i numeri da moltiplicare',N
      READ(*,*)(X(I),I=1,N)
      END

****** Subroutine della moltiplicazione degli elementi di un vettore
      SUBROUTINE MUL(X,N,RESULT)
      REAL X(N)
      RESULT = 1
      DO I=1,N
        RESULT = RESULT*X(I)
      END DO
      END

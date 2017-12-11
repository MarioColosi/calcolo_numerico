      PROGRAM CALCOLAMEDIA
* Scrivere un programma che calcola la media di n numeri interi (o reali).
* Trasformare il programma in una funzione.
      PARAMETER(MAX_N=100)
      REAL X(MAX_N),MEDIA
      WRITE(*,*)'*** MEDIA DI N NUMERI INTERI ***'
  1   FORMAT('Di quanti numeri vuoi fare la media? [MAX:',I3,']')
      WRITE(*,1)MAX_N
      READ(*,*)N
      WRITE(*,*)
      IF(N.GT.MAX_N)THEN
          WRITE(*,*)'ERRORE'
          STOP
      END IF
      CALL INIT_X(X,N)
      RESULT = MEDIA(X,N)
      WRITE(*,*)'La media e''',RESULT
      END

      SUBROUTINE INIT_X(X,N)
      REAL X(N)
      READ(*,*)(X(I),I=1,N)
      END

      REAL FUNCTION MEDIA(X,N)
      REAL X(N)
      MEDIA = 0.0
      DO I=1,N
        MEDIA = MEDIA+X(I)
      END DO
      MEDIA=MEDIA/N
      END

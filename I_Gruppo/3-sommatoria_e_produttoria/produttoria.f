      PROGRAM PRODUTTORIA
* Scrivere i programmi per la sommatoria e la produttoria di n numeri. 
      PARAMETER(MAX_N=100)
      REAL X(MAX_N)
      WRITE(*,*)'*** PRODUTTORIA DI N NUMERI INTERI ***'
1     FORMAT('Quanti numeri vuoi moltiplicare? [MAX:',I3,']')
      WRITE(*,1)MAX_N
      READ(*,*)N
      WRITE(*,*)
      IF(N.GT.MAX_N)THEN
          WRITE(*,*)'ERRORE'
          STOP
      END IF
      CALL INIT_X(X,N)
      CALL MUL(X,N,RESULT)
      WRITE(*,*)'La produttoria dei numeri e''',RESULT
      END

      SUBROUTINE INIT_X(X,N)
      REAL X(N)
      READ(*,*)(X(I),I=1,N)
      END

      SUBROUTINE MUL(X,N,RESULT)
      REAL X(N)
      RESULT = 1
      DO I=1,N
        RESULT = RESULT*X(I)
      END DO
      END

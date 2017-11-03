      PROGRAM SOMMATORIA
      PARAMETER(MAX_N=100)
      REAL X(MAX_N)
      WRITE(*,*)'*** SOMMATORIA DI N NUMERI INTERI ***'
1     FORMAT('Quanti numeri vuoi sommare? [MAX:',I3,']')
      WRITE(*,1)MAX_N
      READ(*,*)N
      IF(N.GT.MAX_N)THEN
          WRITE(*,*)'ERRORE'
          STOP
      END IF
      CALL INIT_X(X,N)
      CALL SUM(X,N,RESULT)
      WRITE(*,*)'La sommatoria dei numeri e''',RESULT
      END

      SUBROUTINE INIT_X(X,N)
      REAL X(N)
      READ(*,*)(X(I),I=1,N)
      END

      SUBROUTINE SUM(X,N,RESULT)
      REAL X(N)
      RESULT = 0
      DO I=1,N
        RESULT = RESULT + X(I)
      END DO
      END

      PROGRAM MEDIA
      PARAMETER(MAX_N=100)
      REAL X(MAX_N)
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
      CALL CALC_MEDIA(X,N,RESULT)
      WRITE(*,*)'La media e''',RESULT
      END

      SUBROUTINE INIT_X(X,N)
      REAL X(N)
      READ(*,*)(X(I),I=1,N)
      END

      SUBROUTINE CALC_MEDIA(X,N,RESULT)
      REAL X(N)
      RESULT = 0.0
      DO I=1,N
        RESULT = RESULT+X(I)
      END DO
      RESULT=RESULT/N
      END

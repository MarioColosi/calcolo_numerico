      PROGRAM MASSIMO_E_MINIMO
      PARAMETER(MAX_N=100)
      REAL X(MAX_N),MINIMO,MASSIMO
      WRITE(*,*)'*** MASSIMO E MINIMO DI N NUMERI INTERI ***'
      WRITE(*,*)'Di quanti numeri vuoi calcolare massimo e minimo?'
      READ(*,*)N
      WRITE(*,*)
      IF(N.GT.MAX_N)THEN
          WRITE(*,*)'ERRORE'
          STOP
      END IF
      CALL INIT_X(X,N)
      RESULT = MINIMO(X,N)
      WRITE(*,*)'Il minimo e'':',RESULT
      RESULT = MASSIMO(X,N)
      WRITE(*,*)'Il massimo e'':',RESULT
      END

      SUBROUTINE INIT_X(X,N)
      REAL X(N)
      READ(*,*)(X(I),I=1,N)
      END

      REAL FUNCTION MINIMO(X,N)
      REAL X(N)
      MINIMO = X(1)
      DO I=2,N
        IF(MINIMO.GT.X(I))MINIMO = X(I)
      END DO
      END

      REAL FUNCTION MASSIMO(X,N)
      REAL X(N)
      MASSIMO = X(1)
      DO I=2,N
        IF(MASSIMO.LT.X(I))MASSIMO = X(I)
      END DO
      END

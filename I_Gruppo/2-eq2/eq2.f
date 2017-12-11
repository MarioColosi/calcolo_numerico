      PROGRAM EQ2
* Risolvere l'equazione di secondo grado
      WRITE(*,*)'*** EQUAZIONI DI SECONDO GRADO: ax^2 + bx + c = 0'
      WRITE(*,*)'Inserisci il valore di A'
      READ(*,*)A
      WRITE(*,*)'Inserisci il valore di B'
      READ(*,*)B
      WRITE(*,*)'Inserisci il valore di C'
      READ(*,*)C
      CALL CALC_EQ2(A,B,C,X1,X2,X)
      WRITE(*,*)'La soluzione dell''equazione e'':'
      WRITE(*,*)'X1 = ',X1
      WRITE(*,*)'X2 = ',X2
      WRITE(*,*)'X = ',X
      END

      SUBROUTINE CALC_EQ2(A,B,C,X1,X2,X)
      REAL A,B,C,X1,X2,X,DELTA
      DELTA = B*B-4*A*C
      WRITE(*,*)'DELTA = ',DELTA
      IF(DELTA.GT.0)THEN
        X1 = (-B-SQRT(DELTA))/(2*A)
        X2 = (-B+SQRT(DELTA))/(2*A)
      ELSE IF(DELTA.EQ.0)THEN
        X = -B/2*A
      ELSE
        WRITE(*,*)'La soluzione dell''equazione e'' complessa'
      ENDIF
      END

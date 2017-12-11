      PROGRAM EQ2
	REAL DELTA
	COMPLEX C1,C2

*    Titolo (INPUT: 2 stringhe da 50 caratteri)
1	FORMAT(2X,52('_'),/,'  |',50X,'|',/,'  |',A,'|',/,
	*'  |',A,'|',/,'  |',50('_'),'|',/)
*    Sottotitolo (INPUT: 1 stringa da 50 caratteri)
2	FORMAT(/,2X,52('-'),/,2X,'  ',A,/,2X,52('-'),/)
*    Messaggio di input (INPUT: 1 stringa)
3	FORMAT(2X,'[INPUT] ',A,$)

	WRITE(*,1)'      RISULUZIONE EQUAZIONE DI SECONDO GRADO      ',
	*		  '          DEL TIPO:   ax^2 + bx + c = 0           '
      WRITE(*,3)'Inserisci il valore di A: '		   
      READ(*,*)A
      WRITE(*,3)'Inserisci il valore di B: '
      READ(*,*)B
      WRITE(*,3)'Inserisci il valore di C: '
      READ(*,*)C
      CALL CALC_EQ2(A,B,C,X1,X2,C1,C2,DELTA)
	WRITE(*,*)
      WRITE(*,*)' [RISULTATI] Le soluzioni dell''equazione sono:'
	IF(DELTA.GT.0)THEN
		WRITE(*,*)' X1 = ',X1
		WRITE(*,*)' X2 = ',X2
	ELSE IF(DELTA.EQ.0)THEN
		WRITE(*,*)'X1 = X2 = ',X1
	ELSE
		WRITE(*,*)' C1 = ',C1
		WRITE(*,*)' C2 = ',C2
	END IF
	WRITE(*,*)
      END

****** Subroutine di risoluzione di un'equazione di secondo grado
*	 - Se la soluzione e' reale, le soluzioni saranno ritornate in X1 e X2
*	 - Se la soluzione e' complessa, le soluzioni saranno ritornate in C1 e C2
*	 - Viene restituito il valore del delta per poter distinguere le soluzioni ritornate
      SUBROUTINE CALC_EQ2(A,B,C,X1,X2,C1,C2,DELTA)
      REAL A,B,C,X1,X2,DELTA
	COMPLEX C1,C2
      DELTA = B*B-4*A*C
      IF(DELTA.GT.0)THEN
		X1 = (-B-SQRT(DELTA))/(2*A)
		X2 = (-B+SQRT(DELTA))/(2*A)
      ELSE IF(DELTA.EQ.0)THEN
		X1 = -B/2*A
		X2 = X1
      ELSE
		C1 = (-B-SQRT(CMPLX(DELTA,0)))/(2*A)
		C2 = (-B+SQRT(CMPLX(DELTA,0)))/(2*A)
      ENDIF
      END

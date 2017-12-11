	PROGRAM EQUIVALENZA
	USE MSIMSL
*  Verificare le principali relazioni tra le varie norme matriciali studiate 	
 	PARAMETER(N_MAX=500)
	REAL X(N_MAX,N_MAX)
	REAL M,N_1,N_2,N_INF,NORMA_1,NORMA_2,NORMA_INF
*    Titolo (INPUT: 2 stringhe da 50 caratteri)
1	FORMAT(2X,52('_'),/,'  |',50X,'|',/,'  |',A,'|',/,
	*'  |',A,'|',/,'  |',50('_'),'|',/)
*    Sottotitolo (INPUT: 1 stringa da 50 caratteri)
2	FORMAT(/,2X,52('-'),/,2X,'  ',A,/,2X,52('-'),/)
*    Messaggio di input (INPUT: 1 stringa)
3	FORMAT(2X,'[INPUT] ',A,$)

	WRITE(*,1)'             TEOREMA DI EQUIVALENZA               ',
	*		  '             TRA LE NORME MATRICIALI              '
	WRITE(*,3)'Inserisci la dimensione della matrice: '
	READ(*,*)N
*    Inizializzazione della matrice
	CALL INIT_MATRIX(X,N_MAX,N)
*    Stampa della matrice
	WRITE(*,2)'MATRICE DI INPUT'
20	FORMAT(:20(F7.2))
	DO I=1,N
		WRITE(*,20)(X(I,J),J=1,N)
		WRITE(*,*)
	END DO
****** Calcolo delle tre norme matriciali
	N_1=NORMA_1(X,N_MAX,N)
	N_2=NORMA_2(X,N_MAX,N)
	N_INF=NORMA_INF(X,N_MAX,N)
*    - Prima disequazione
	M=FLOAT(N)
	IF(1/SQRT(M)*N_INF.LE.N_2.AND.N_2.LE.SQRT(M)*N_INF)THEN
		WRITE(*,*)' [RESULT] La prima disequazione e'' verificata!'
	ELSE
		WRITE(*,*)' [RESULT] La prima disequazione NON e'' verificata!'
	END IF
	WRITE(*,*)1/SQRT(M)*N_INF,' <= ', N_2,' <=' ,SQRT(M)*N_INF 
	WRITE(*,*)
*    - Seconda disequazione
	IF(1/SQRT(M)*N_1.LE.N_2.AND.N_2.LE.SQRT(M)*N_1)THEN
		WRITE(*,*)' [RESULT]La seconda disequazione e'' verificata!'
	ELSE
		WRITE(*,*)' [RESULT] La seconda disequazione NON e'' verificata!'	
     	END IF
	WRITE(*,*)1/SQRT(M)*N_1,' <= ', N_1,' <=' ,SQRT(M)*N_2 
	WRITE(*,*)
*    - Terza disequazione
	MAX=0
	DO I=1,N
		DO J=1,N
			IF(ABS(X(I,J)).GT.MAX)THEN
				MAX=ABS(X(I,J))
			END IF
		END DO
      END DO
	IF(MAX.LE.N_2.AND.N_2.LE.N*MAX)THEN 
		WRITE(*,*)' [RESULT] La terza disequazione e'' verificata!'
	ELSE
		WRITE(*,*)' [RESULT]La terza disequazione NON e'' verificata!'	
	END IF
	WRITE(*,*)MAX,' <= ', N_2,' <=' ,N*MAX
	WRITE(*,*)
*    Quarta disequazione
	IF(N_2.LE.SQRT(N_1*N_INF))THEN	  
		WRITE(*,*)' [RESULT] La quarta disequazione e'' verificata!'
	ELSE
		WRITE(*,*)' [RESULT] La quarta disequazione NON e'' verificata!'
	END IF	
	WRITE(*,*)N_2,' <= ',SQRT(N_1*N_INF)
	WRITE(*,*)
	END

****** Subroutine di inizializzazione di una matrice di dimensione N
	SUBROUTINE INIT_MATRIX(A,N_MAX,N)
	REAL A(N_MAX,N)
 3	FORMAT(2X,'[INPUT] ',A,'[RIGA',I3,']: ',$)
	DO I=1,N
		WRITE(*,3)'Inserisci i valori della matrice ', I
		READ(*,*)(A(I,J),J=1,N)
	END DO
	END 
 

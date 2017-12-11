	PROGRAM EQUIVALENZA
* Verificare il Teorema di equivalenza tra le norme vettoriali. 
* In particolare le relazioni tra le tre norme vettoriali studiate.

 	PARAMETER(MAX_N=500)
	REAL X(MAX_N)
	REAL N_1,N_2,N_INF,NORMA1,NORMA2,NORMAINF

*    Titolo (INPUT: 2 stringhe da 50 caratteri)
1	FORMAT(2X,52('_'),/,'  |',50X,'|',/,'  |',A,'|',/,
	*'  |',A,'|',/,'  |',50('_'),'|',/)
*    Sottotitolo (INPUT: 1 stringa da 50 caratteri)
2	FORMAT(/,2X,52('-'),/,2X,'  ',A,/,2X,52('-'),/)
*    Messaggio di input (INPUT: 1 stringa)
3	FORMAT(2X,'[INPUT] ',A,$)

	WRITE(*,1)'             TEOREMA DI EQUIVALENZA               ',
	*		  '             TRA LE NORME VETTORIALI              '

	WRITE(*,3)'Inserisci la dimensione del vettore: '
	READ(*,*)N
	CALL INIT_VETT(X,N)
*    Calcolo delle tre norme vettoriali
	N_1=NORMA1(X,N)
	N_2=NORMA2(X,N)
	N_INF=NORMAINF(X,N)
*    Verifica del teorema di equivalenza tra le tre norme vettoriali
	WRITE(*,*)
*    - 1a disequazione
	IF(N_INF.LE.N_2.AND.N_2.LE.SQRT(FLOAT(N))*N_INF)THEN
		WRITE(*,*)' [RESULT] La prima disequazione e'' verificata!'
	ELSE
		WRITE(*,*)' [RESULT] La prima disequazione NON e'' verificata!'
	END IF
	WRITE(*,*)N_INF,' <= ', N_2,' <=' ,SQRT(FLOAT(N))*N_INF 
	WRITE(*,*)
*    - 2a disequazione
	IF(N_2.LE.N_1.AND.N_1.LE.SQRT(FLOAT(N))*N_2)THEN
		WRITE(*,*)' [RESULT] La seconda disequazione e'' verificata!'
	ELSE	
		WRITE(*,*)' [RESULT] La seconda disequazione NON e'' verificata!'
	END IF
	WRITE(*,*)N_2,' <= ', N_1,' <=' ,SQRT(FLOAT(N))*N_2 
	WRITE(*,*)
*    - 3a disequazione
	IF(N_INF.LE.N_1.AND.N_1.LE.N*N_INF)THEN 
		WRITE(*,*)' [RESULT] La terza disequazione e'' verificata!'
	ELSE	
		WRITE(*,*)' [RESULT] La terza disequazione NON e'' verificata!'
	END IF
	WRITE(*,*)N_INF,' <= ', N_1,' <=' ,N*N_INF
	WRITE(*,*)
	END

****** Subroutine di inizializzazione di un vettore di dimensione N
	SUBROUTINE INIT_VETT(X,N)
	REAL X(N)
 3	FORMAT(2X,'[INPUT] ',A,' [N =',I3,']: ',$)
	WRITE(*,3)'Inserisci gli elementi del vettore',N
	READ(*,*)(X(I),I=1,N)
	END 
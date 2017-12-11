	PROGRAM ORDINAMENTO 
* Ordinamento di un insieme di numeri (oppure nomi), stampare l'insieme ordinato	
	PARAMETER(N_MAX=10)
	REAL X(N_MAX)

*    Titolo (INPUT: 1 stringa da 50 caratteri)
2	FORMAT(/,2X,52('-'),/,2X,'  ',A,/,2X,52('-'),/)
*    Messaggio di input (INPUT: 1 stringa)
3	FORMAT(2X,'[INPUT] ',A,$)
																 	
	WRITE(*,2)'            ORDINAMENTO DI UN VETTORE               '
      WRITE(*,3)'Inserisci la dimensione del vettore: '
      READ(*,*)N
	CALL INIT_X(X,N)
	WRITE(*,*)' [INPUT] Il vettore inserito e'':'
	WRITE(*,*)(X(I),I=1,N)
	CALL ORDINA_X(X,N)
	WRITE(*,*)' [RESULT] Il vettore ordinato e'':'
	WRITE(*,*)(X(I),I=1,N)
	WRITE(*,*)
	END

****** Subroutine di inizializzazione del vettore da ordinare
	SUBROUTINE INIT_X(X,N)
	REAL X(N)
 3	FORMAT(2X,'[INPUT] ',A,'[N =',I3,']: ',$)
	WRITE(*,3)'Inserisci i valori del vettore: ',N
	READ(*,*)(X(I),I=1,N)
	END 

	SUBROUTINE ORDINA_X(X,N)
	REAL X(N),TEMP
	DO I=1,N
		DO J=1,N-I
		IF(X(J).GT.X(J+1))THEN
			TEMP=X(J)
			X(J)=X(J+1)
			X(J+1)=TEMP
		END IF 
		END DO 
	END DO 
	END 	



	PROGRAM ORDINAMENTO 
* Ordinamento di un insieme di numeri (oppure nomi), stampare l'insieme ordinato
	
	PARAMETER(N_MAX=10)
	REAL X(N_MAX)
	WRITE(*,*)'Inserisci la dimensione del vettore:'
	READ(*,*)N
	CALL INIT_X(X,N)
	WRITE(*,*)'Il vettore e'':'
	WRITE(*,*)(X(I),I=1,N)
	CALL ORDINA_X(X,N)
	WRITE(*,*)'Il vettore ordinato e'':'
	WRITE(*,*)(X(I),I=1,N)

	END


	SUBROUTINE INIT_X(X,N)
	REAL X(N)
	WRITE(*,*)'Inserisci i valori del vettore:'
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



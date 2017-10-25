	PROGRAM TOEPLIZ_MATRIX

	PARAMETER(MAX_N=500)
	REAL T(MAX_N,MAX_N)
	REAL VETT(MAX_N)
	WRITE(*,*)'Inserisci la grandezza della matrice: '
	READ(*,*)N
	CALL INIT_VETT(VETT,N)
	CALL MATRIX_T(VETT,T,MAX_N,N)
	DO I=1,N
	WRITE(*,*)(T(I,J),J=1,N)
	END DO 
	END

	
      SUBROUTINE INIT_VETT(VETT,N)
	REAL VETT(-(N-1):N-1)
	WRITE(*,*)'Inserisci i valori del vettore: '
	READ(*,*)(VETT(I),I=0,N-1)
	END

	SUBROUTINE MATRIX_T(VETT,T,MAX_N,N)
      REAL T(MAX_N,N)
	REAL VETT(-(N-1):N-1)
	DO I=1,N
		DO J=1,N
			T(I,J)=VETT(J-1)
		END	DO
	END DO
	END

	

	




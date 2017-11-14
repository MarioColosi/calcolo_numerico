      PROGRAM HILBERT_MATRIX

	PARAMETER(MAX_N=500)
	REAL H(MAX_N,MAX_N)
	WRITE(*,*)'Inserisci la dimensione della matrice: '
	READ(*,*)N
	CALL MATRIX_H( H,MAX_N,N)
	WRITE(*,*)'La matrice di Hilbert e'':'
	DO I=1,N
		WRITE(*,*)(H(I,J),J=1,N)
		WRITE(*,*)
	END DO
	END

	SUBROUTINE MATRIX_H(H,MAX_N,N)
	REAL H(MAX_N,N)
	DO 	I=1,N
		DO J=1,N
			H(I,J)=1./(I+J-1)
		END DO
	END DO
	END

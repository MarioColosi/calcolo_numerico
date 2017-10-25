	PROGRAM WILKINSON

	PARAMETER(MDIM=100)
	INTEGER W(MDIM,MDIM)
	WRITE(*,*)'Inserire l''ordine della matrice di Wilkinson'
	READ(*,*)N
		
	DO I=1,N
		DO J=1,N
			W(I,J)=5
		END DO
	END DO

	T1=SECNDS(0.0)
	DO I=1,1000000
		CALL BUILD_MATRIX(W,MDIM,N)
	END DO
	T2=SECNDS(T1)

20	FORMAT(:20(I4))
	DO I=1,N
		WRITE(*,20)(W(I,J),J=1,N)
		WRITE(*,*)
	END DO
	WRITE(*,*)'** TEMPO DI ESECUZIONE',T2
	READ(*,*)
	END

	SUBROUTINE BUILD_MATRIX(W,MDIM,N)
	INTEGER W(MDIM,N)
	W(1,1)=1
	W(2,1)=1
	W(2,2)=1
	DO J=2,N-1,2
		W(1,J)=5
		W(1,J+1)=5
		W(2,J+1)=5
		W(2,J+2)=5
	END DO
	W(1,N)=-1
	W(2,N)=1

	DO I=3,N-1,2
		I2=I+1
		DO J=1,I-2,2
			W(I,J)=-1
			W(I,J+1)=1
			W(I2,J)=1
			W(I2,J+1)=-1
		END DO
		W(I,I)=1
		W(I,J+1)=5	.
		W(I2,J)=1
		W(I2,J+1)=1
		DO J=J+2,N-1,2
		 	W(I,J)=5
			W(I,J+1)=5
			W(I2,J)=5
			W(I2,J+1)=5
		END DO
		W(I,N)=-1
		W(I2,N)=1
	END DO
	IF(I.EQ.N)THEN
		DO J=1,N-4,2
			W(N,J)=-1
			W(N,J+1)=1
		END DO
		W(N,J)=-1
		W(N,J+1)=1
		W(N,N)=1
	END IF
	END

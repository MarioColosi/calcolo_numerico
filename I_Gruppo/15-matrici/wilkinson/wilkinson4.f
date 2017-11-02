	PROGRAM WILKINSON

	PARAMETER(MDIM=100)
	INTEGER W(MDIM,MDIM)
	WRITE(*,*)'Inserire l''ordine della matrice di Wilkinson'
	READ(*,*)N

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
	W(3,1)=-1
	W(3,2)=1
	W(3,3)=1
	W(4,1)=1
	W(4,2)=-1
	W(4,3)=1
	W(4,4)=1
	DO J=2,N-1,2
		W(1,J)=0
		W(1,J+1)=0
		W(2,J+1)=0
		W(2,J+2)=0
	END DO
	DO J=4,N-1,2
		W(3,J)=0
		W(3,J+1)=0
		W(4,J+1)=0
		W(4,J+2)=0
	END DO
	W(1,N)=-1
	W(2,N)=1
	W(3,N)=-1
	W(4,N)=1

	DO I=5,N-4,4
		I2=I+1
		I3=I2+1
		I4=I3+1
		DO J=1,I-2,2
			W(I,J)=-1	
			W(I2,J)=1
			W(I3,J)=-1	
			W(I4,J)=1
			W(I,J+1)=1
			W(I2,J+1)=-1
			W(I3,J+1)=1
			W(I4,J+1)=-1
		END DO
		W(I,I)=1
		W(I,J+1)=0
		W(I,J+2)=0
		W(I,J+3)=0
	
		W(I2,J)=1
		W(I2,J+1)=0
		W(I2,J+2)=0
		W(I2,J+3)=0

		W(I3,J)=-1
		W(I3,J+1)=1
		W(I3,J+2)=1
		W(I3,J+3)=0

		W(I4,J)=1
		W(I4,J+1)=-1
		W(I4,J+2)=1
		W(I4,J+3)=1

		DO J=J+4,N-1,2
		 	W(I,J)=0	
			W(I2,J)=0	
			W(I3,J)=0	
			W(I4,J)=0

			W(I,J+1)=0
			W(I3,J+1)=0
			W(I2,J+1)=0
			W(I4,J+1)=0
		END DO

		W(I,N)=-1
		W(I2,N)=1
		W(I3,N)=-1
		W(I4,N)=1
	END DO
	DO I=I,N-1,2 
		DO J=1,I-2,2
			W(I,J)=-1	
			W(I,J+1)=1
			W(I+1,J)=1
			W(I+1,J+1)=-1
		END DO
		W(I,I)=1
		W(I,I+1)=0
		W(I+1,I)=1
		W(I+1,I+1)=1
		DO J=I+2,N-1
			W(I,J)=0
			W(I+1,J)=0
		END DO
		W(I,N)=-1
		W(I+1,N)=1
	END DO
	IF(I.EQ.N)THEN
		DO J=1,N-3,2
			W(N,J)=-1
			W(N,J+1)=1
		END DO
		W(N,J)=-1
		W(N,J+1)=1
	W(N-1,N)=1
	W(N,N)=1
	END IF
	END

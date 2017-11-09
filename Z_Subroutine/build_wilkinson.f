	SUBROUTINE BUILD_WILKINSON(W,MDIM,N)
	INTEGER W(100,N)
	W(1,1)=1
	W(2,1)=1
	W(2,2)=1
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
		W(I,I)=1	.
		W(I2,J)=1
		W(I2,J+1)=1
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

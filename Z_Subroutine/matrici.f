	SUBROUTINE BUILD_HANKEL(H,MAX_N,N)
	REAL H(MAX_N,N)
	REAL VETT(2:2*N)
	CALL INIT_VETT_H(VETT,N)
	DO I=1,N
		DO J=1,N
			H(I,J)=VETT(I+J)
		END	DO
	END DO
	END

	SUBROUTINE INIT_VETT_H(VETT,N)
	REAL VETT(2:2*N)
	WRITE(*,*)'Inserisci i valori del vettore: '
	READ(*,*)(VETT(I),I=2,2*N)
	END

	SUBROUTINE BUILD_HILBERT(H,MAX_N,N)
	REAL H(MAX_N,N)
	DO I=1,N
		DO J=1,N
			H(I,J)=1./(I+J-1)
		END DO
	END DO
	END

	SUBROUTINE BUILD_TOEPLIZ(T,MAX_N,N)
	REAL T(MAX_N,N)
	REAL VETT(-N+1:N-1)
	CALL INIT_VETT_T(VETT,N)
	DO I=1,N
		DO J=1,N
			T(I,J)=VETT(I-J)
		END	DO
	END DO
	END

	SUBROUTINE INIT_VETT_T(VETT,N)
	REAL VETT(-N+1:N-1)
	WRITE(*,*)'Inserisci i valori del vettore: '
	READ(*,*)(VETT(I),I=-N+1,N-1)
	END

	SUBROUTINE BUILD_TRIDIAGONALE(A,N)
	REAL A(3*N)
	CALL INIT_VETT_TRI(A,N)
	END

	SUBROUTINE INIT_VETT_TRI(VETT,N)
	REAL VETT(3*N)
	VETT(0)=0
	WRITE(*,*)'Inserisci i valori del vettore a: '
	READ(*,*)(VETT(I),I=2,N)
	WRITE(*,*)'Inserisci i valori del vettore b: '
	READ(*,*)(VETT(I),I=N+1,2*N)
	WRITE(*,*)'Inserisci i valori del vettore b: '
	READ(*,*)(VETT(I),I=2*N+1,3*N-1)
	VETT(3*N)=0
	END
	
	SUBROUTINE BUILD_VANDERMONDE(V,MAX_N,N)
	REAL V(MAX_N,N)
	REAL X(N)
	CALL INIT_X_V(X,N)
	DO I=1,N
		V(I,1)=1
		DO J=2,N
			V(I,J)=X(I)**(J-1)
		END DO
	END DO
	END

	SUBROUTINE INIT_X_V(X,N)
	REAL X(N)
	REAL A,B,H
	WRITE(*,*)'Inserisci gli estremi dell''intervallo [a,b]: '
	READ(*,*)A,B
	H=ABS(A-B)/N
	X(1)=A
	DO I=2,N-1
		X(I)=X(I-1)+H
	END DO
	X(N)=B
	END

	SUBROUTINE BUILD_WILKINSON(W,MDIM,N)
	REAL W(MDIM,N)
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
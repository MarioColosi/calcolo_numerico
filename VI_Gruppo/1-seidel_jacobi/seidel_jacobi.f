	PROGRAM SEIDEL_JACOBI
* Confrontare sullo stesso sistema lineare il comportamento dei metodi di Jacobi e Gauss-Seidel.
* Confrontare l’andamento grafico degli errori nei vari iterati.
	
	PARAMETER(N_MAX=500,N=3, MAX_ITER=40, EPS=0.000001)
	REAL A(N_MAX,N_MAX)
	REAL B(N_MAX),X(N_MAX)
	CALL INIT_VETT(B,N)
	WRITE(*,*)'Il vettore e'':'
	WRITE(*,*)(B(I),I=1,N)
	CALL INIT_MATRIX(A,N_MAX,N)
	WRITE(*,*)'La matrice e'':'
	DO I=1,N
		WRITE(*,*)(A(I,J),J=1,N)
	END DO
	ITER=MAX_ITER+1
	X(:)=0
	I=1
	DO WHILE(ITER.LE.MAX_ITER+1.AND.I.LT.2)
*		CALL JACOBI_OTTIMIZZATO(A,B,X,N_MAX,N,MAX_ITER,ITER,EPS)
		CALL GAUSS_SEIDEL(A,B,X,N_MAX,N,MAX_ITER,ITER,EPS)
		I=I+1
      END DO
	WRITE(*,*)'La soluzione dopo Gauss-Seidel e'':'
	WRITE(*,*)(X(I),I=1,N)
	END 

	SUBROUTINE INIT_VETT(B,N)
	REAL B(N)
	B(1)=6
 	B(2)=-7
	B(3)=-14
	END 

	SUBROUTINE INIT_MATRIX(A,N_MAX,N)
	REAL A(N_MAX,N)
	A(1,1)=4
	A(1,2)=1
	A(1,3)=1
	A(2,1)=2
	A(2,2)=-9
	A(2,3)=0
	A(3,1)=0
	A(3,2)=-8
	A(3,3)=-6
	END 

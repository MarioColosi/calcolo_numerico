	PROGRAM SEIDEL_JACOBI
* Confrontare sullo stesso sistema lineare il comportamento dei metodi di Jacobi e Gauss-Seidel.
* Confrontare l’andamento grafico degli errori nei vari iterati.
	
	PARAMETER(N_MAX=500)
	REAL A(N_MAX,N_MAX)
	REAL B(N_MAX),X(N_MAX)
	INTEGER K
	N=3
	WRITE(*,*)'Inserisci il valore di K:'
	READ(*,*)K
	CALL INIT_VETT(B,N)
	WRITE(*,*)'Il vettore e'':'
	WRITE(*,*)(B(I),I=1,N)
	CALL INIT_MATRIX(A,N_MAX,N)
	WRITE(*,*)'La matrice e'':'
	DO I=1,N
		WRITE(*,*)(A(I,J),J=1,N)
	END DO
	CALL GAUSS_SEIDEL(A,B,X,K,N_MAX,N)
	WRITE(*,*)'La matrice dopo Gauss-Seidel e'':'
	DO I=1,N
		WRITE(*,*)(A(I,J),J=1,N)
	END DO 
	CALL INIT_MATRIX(A,N_MAX,N)
	CALL JACOBI_OTTIMIZZATO(A,B,X,K,N_MAX,N)
	WRITE(*,*)'La matrice dopo Jacobi ottimizzato e'':'
	DO I=1,N
		WRITE(*,*)(A(I,J),J=1,N)
	END DO
	END 

	SUBROUTINE INIT_VETT(B,N)
	REAL B(N)
	B(1)=7
	B(2)=13
	B(3)=-4
	END 

	SUBROUTINE INIT_MATRIX(A,N_MAX,N)
	REAL A(N_MAX,N)
	A(1,1)=3
	A(1,2)=0
	A(1,3)=4
	A(2,1)=7
	A(2,2)=4
	A(2,3)=2
	A(3,1)=-1
	A(3,2)=-1
	A(3,3)=-2
	END 

	PROGRAM SEIDEL_JACOBI
* Confrontare sullo stesso sistema lineare il comportamento dei metodi di Jacobi e Gauss-Seidel.
* Confrontare l’andamento grafico degli errori nei vari iterati.
	PARAMETER(N_MAX=500,N=3, MAX_ITER=40, EPS=0.000000001)
	REAL A(N_MAX,N_MAX)
	REAL B(N_MAX),X(N_MAX)

* FORMATO STAMPA TITOLO (2 STRINGHE DA 50 CARATTERI)
1	FORMAT(2X,52('_'),/,'  |',50X,'|',/,'  |',A,'|',/,
	*'  |',A,'|',/,'  |',50('_'),'|',/)
* FORMATO STAMPA TITOLO (1 STRINGA DA 50 CARATTERI)
2	FORMAT(/,2X,52('-'),/,2X,'# ',A,I2,/,2X,52('-'),/)

	WRITE(*,1)' RISOLUZIONE SISTEMI LINEARI CON METODI ITERATIVI ',
	*		  '       E CONFRONTO TRA JACOBI E GAUSS-SEIDEL      '
	CALL INIT(A,B,N_MAX,N)
	WRITE(*,2)'                 MATRICE DI INPUT                 '
	DO I=1,N
		WRITE(*,*)(A(I,J),J=1,N)
	END DO
	WRITE(*,2)'                 VETTORE DI INPUT                 '
	WRITE(*,*)(B(I),I=1,N)
	WRITE(*,*)
*	Inizializzazione del vettore X
	X(:)=0
	I=1
	ITER=MAX_ITER+1
	DO WHILE(ITER.LE.MAX_ITER+1.AND.I.LT.5)
		CALL JACOBI(A,B,X,N_MAX,N,MAX_ITER,ITER,EPS,.TRUE.)
*		CALL GAUSS_SEIDEL(A,B,X,N_MAX,N,MAX_ITER,ITER,EPS,.TRUE.)
		I=I+1
      END DO
3	FORMAT(2X,'[RESULT] Soluzione del sistema [ITERAZIONE:',I3,' ]')
	IF(I.LT.2)I=2
	WRITE(*,3)MAX_ITER*(I-2)+ITER
	WRITE(*,*)(X(I),I=1,N)
	END 

******Subroutine di inizializzazione della matrice e del vettore
	SUBROUTINE INIT(A,B,N_MAX,N)
	REAL A(N_MAX,N)
	REAL B(N)
*	- Secondo sistema:	n=3, A=[-3,3,-6,-4,7,-8,5,7,-9], b=[-6,-5,3]
	A(1,1)=-3;	A(1,2)=3;	A(1,3)=-6;	B(1)=-6 
	A(2,1)=-4;	A(2,2)=7;	A(2,3)=-8;	B(2)=-5
	A(3,1)=5;	A(3,2)=7;	A(3,3)=-9;	B(3)=3	     	
*    - Terzo sistema:		n=3, A=[4,1,1,2,-9,0,0,-8,-6],   b=[6,-7,-14]
*	A(1,1)=4;	A(1,2)=1;	A(1,3)=1;	B(1)=6;
*	A(2,1)=2;	A(2,2)=-9;	A(2,3)=0;	B(2)=-7
*	A(3,1)=0;	A(3,2)=-8;	A(3,3)=-6;	B(3)=-14
	END 

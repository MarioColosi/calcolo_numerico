	PROGRAM	PRECISIONE
* Trovare la precisione della macchina in singola e doppia precisione.
	
	REAL R,P
	REAL*8 R2,P2
	R=0
	P=1.0
	DO WHILE(R.NE.1)
	P=P/2
	R=1+P
	ENDDO
	R=P*2
	WRITE(*,*)'La precisione della macchina e'':',R

	R=1.0
	DO WHILE(R+1.NE.1)
	R=R/2
	ENDDO
	R=R*2
	WRITE(*,*)'La precisione nel secondo metodo e'':',R

	R2=0
	P2=1.0
	DO WHILE(R2.NE.1)
	P2=P2/2
	R2=1+P2
	ENDDO
	R2=P2*2
	WRITE(*,*)'La precisione della macchina a REAL*8 e'':',R2



	
	END
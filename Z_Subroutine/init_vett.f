****** Subroutine di inizializzazione di un vettore di dimensione N
	SUBROUTINE INIT_VETT(X,N)
	REAL X(N)
 3	FORMAT(2X,'[INPUT] ',A,'[N =',I3,']: ',$)
	WRITE(*,3)'Inserisci gli elementi del vettore',N
	READ(*,*)(X(I),I=1,N)
	END 

****** Funzione di calcolo del fattoriale di un numero reale N
	REAL FUNCTION FATT(N)
	FATT=1.0 
	DO I=1,N
		FATT=I*FATT
	END DO 
	END
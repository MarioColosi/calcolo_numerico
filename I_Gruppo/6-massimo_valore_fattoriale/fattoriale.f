	PROGRAM FATTORIALE 
<<<<<<< HEAD
*Studiare il massimo valore del fattoriale di n calcolabile da un elaboratore nel caso 
*di variabili di tipo intero, reale e reale in doppia precisione. 
=======
* 6. Studiare il massimo valore del fattoriale di n calcolabile da un elaboratore nel caso di
*    variabili di tipo intero, reale e reale in doppia precisione.
>>>>>>> 9b63569f1f8179eb489f1e964a55366d2c3f0c9f
	INTEGER FATT,RIS

	REAL FATT_R,RIS_R
	REAL*8 FATT_R8, RIS_R8

*    Titolo (INPUT: 2 stringhe da 50 caratteri)
1	FORMAT(2X,52('_'),/,'  |',50X,'|',/,'  |',A,'|',/,
	*'  |',A,'|',/,'  |',50('_'),'|',/)
*    Sottotitolo (INPUT: 1 stringa da 50 caratteri)
2	FORMAT(/,2X,52('-'),/,2X,'  ',A,/,2X,52('-'),/)
*    Messaggio di input (INPUT: 1 stringa)
3	FORMAT(2X,'[INPUT] ',A,$)

	WRITE(*,1)'       MASSIMO VALORE DEL FATTORIALE DI N         ',
	*		  '         IN SINGOLA E DOPPIA PRECISIONE           '
	WRITE(*,3)'Inserisci un numero (MAX = 170): '
	READ(*,*)N
	WRITE(*,*)
	RIS=FATT(N)
	WRITE(*,*)
	RIS_R8=FATT_R8(N)
	WRITE(*,*)
	RIS_R=FATT_R(N)
	WRITE(*,*)
	END

****** Funzione di calcolo del fattoriale di un numero intero N
	INTEGER FUNCTION FATT(N)
3	FORMAT(2X,'[INTEGER] Il fattoriale di:',I3,' e'': ',I15)
	FATT=1 
	DO I=1,N
	FATT=I*FATT
	WRITE(*,3)I,FATT
	END DO 
	END

****** Funzione di calcolo del fattoriale di un numero reale N
	REAL FUNCTION FATT_R(N)
3	FORMAT(2X,'[REAL] Il fattoriale di:',I3,' e'': ',F40.0)
	FATT_R=1.0 
	DO I=1,N
	FATT_R=I*FATT_R
	WRITE(*,3)I,FATT_R
	END DO 
	END

****** Funzione di calcolo del fattoriale di un numero reale N in doppia precisione
	REAL*8 FUNCTION FATT_R8(N)
3	FORMAT(2X,'[REAL*8] Il fattoriale di:',I3,' e'': ',F80.0)
	FATT_R8=1.0
	DO I=1,N
	FATT_R8=I*FATT_R8
	WRITE(*,3)I,FATT_R8
	END DO 
	END
	PROGRAM	PRECISIONE
* Trovare la precisione della macchina in singola e doppia precisione.
	
	REAL R,P
	REAL*8 R2,P2

*    Titolo (INPUT: 1 stringa da 50 caratteri)
2	FORMAT(/,2X,52('-'),/,2X,'',A,/,2X,52('-'),/)																 	
	WRITE(*,2)'PRECISIONE DI MACCHINA A SINGOLA E DOPPIA PRECISIONE'

****** Ad ogni iterazione si divide P=1 per 2. Si somma il risultato ottenuto ad 1 e si ottiene R. 
****** Se R e' uguale ad 1, il contributo di P e' nullo e pertanto ciò significa che  
****** all'iterazione precedente si e' ottenuta la precisione di macchina.
	R=0
	P=1.0
	DO WHILE(R.NE.1)
		P=P/2
		R=1+P
	ENDDO
	R=P*2
	WRITE(*,*)' [RESULT] La precisione della macchina e'':',R

****** Si ripete lo stesso procedimento spostando la somma P+1 all'interno della condizione del ciclo.
****** In questo modo la somma viene effettuata nella ALU, che lavora a doppia precisione.
	P=1.0
	DO WHILE(P+1.NE.1)
		P=P/2
	ENDDO
	P=P*2
	WRITE(*,*)' [RESULT] La precisione con controllo nella ALU e'':',P

****** Si ripete lo stesso procedimento del primo metodo utilizzando variabili a doppia precisione.
	R2=0
	P2=1.0
	DO WHILE(R2.NE.1)
		P2=P2/2
		R2=1+P2
	ENDDO
	R2=P2*2
	WRITE(*,*)' [RESULT] La precisione di macchina a REAL*8 e'':',R2

	WRITE(*,*)
	END
	PROGRAM FATTORIALE 

	INTEGER FATT,RIS
	REAL FATT_R,RIS_R
	REAL*8 FATT_R8, RIS_R8
	WRITE(*,*)'Inserisci il numero che vuoi fattorializzare:'
	READ(*,*)N
	RIS=FATT(N)
	WRITE(*,*)
	RIS_R=FATT_R(N)
	WRITE(*,*)
	RIS_R8=FATT_R8(N)
*	WRITE(*,*)'Il fattoriale di',N,' e'':',RIS 
	END

	INTEGER FUNCTION FATT(N)
	FATT=1 
	DO I=1,N
	FATT=I*FATT
	WRITE(*,*)'Il fattoriale di:', I,' e'':', FATT
	END DO 
	END

	REAL FUNCTION FATT_R(N)
	REAL FATT_R=1.0 
	DO I=1,N
	FATT_R=I*FATT_R
	WRITE(*,*)'Il fattoriale di:', I,' e'':', FATT_R
	END DO 
	END

	REAL*8 FUNCTION FATT_R8(N)
	FATT_R8=1.0 
	DO I=1,N
	FATT_R8=I*FATT_R8
	WRITE(*,*)'Il fattoriale di:', I,' e'':', FATT_R8
	END DO 
	END
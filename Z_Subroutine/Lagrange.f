	FUNCTION LAGRANGE (T,Y,N)
	REAL T(N),Y(N), P
	INTEGER K			
	DO K=I,N
		DO I=1,N
			P=1
			DO J=1,I-1
				P=P*((T(I)-J)/(I-J))
			END DO 
			DO J=I+1,N
				P=P*((T(I)-J)/(I-J))
			END DO
			LAGRANGE=Y(I)*P 
	    END DO 
	END DO
	END
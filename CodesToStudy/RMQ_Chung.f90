PROGRAM RadiusMeanSquare
       IMPLICIT NONE

	REAL Rmq, rkpp, rk, rc, rb

	Rmq=1/8*(1/(rkpp**2) - (1/rk) + 2*(rc**2) + 
     &((2*rc+rb)*(1+rkpp*rb))/rkpp - ((rb**3)*rkpp)/(3*(1+rb)))   

      END

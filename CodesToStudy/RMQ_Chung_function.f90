      PROGRAM FunctionRadiusMeanSquare
      IMPLICIT NONE

!Vamos explicitar aqui todas as variáveis que serão utilizadas

      REAL Rmq, rKpp, rK, rC, rB
      REAL V_o, E_o, hc, M, m_p, m_n

!Vamos declarar os valores das variáveis a serem utilizadas
 
      hc=197.326    ! hc = hbar
      m_p=938.272   ! m_p = 1.673x10^-27kg -> 938.272 Mev, massa 
!do próton em MeV, conversão realizada com a equação E=mc^2
      m_n=939.565   ! m_n = 1,675×10^−27kg -> 939.565 Mev, massa 
!do neutron em MeV, conversão realizada com a equação E=mc^2
      V_o=40.0      ! V_o = 40 Mev, representa a profundidade do 
!poço retangular (modelo de gás do Fermi)
      E_o=2.225     ! Energia de ligação E_0 = 2,225 Mev
      rC=0.4        ! rC = 0,8 fm, raio do próton ?
!rB = 1.89       ! rB = 1,89 fm

!Precisaremos também das expressões da massa reduzida (M),
! de rKpp e rK

      M=(m_p * m_n)/(m_n + m_p)

      PRINT *, 'M =', M

      rK=1.0/hc * SQRT((2.0*M*(V_o - E_o)))

      PRINT *, 'K =', rK

      rKpp=(1.0/hc) * SQRT((2.0*M*E_o))

      PRINT *, 'Kappa =', rKpp

!Agora precisamos construir a função, a qual será construída 
!em um comando de laço.

      rB=1.0

      PRINT *, 'rB =', rB

      DO WHILE (rB.LE.2.0) !Aqui temos um laço que vai rodar
! uma certa equação,
!com rB como parâmetro, até que chegue no valor máximoestipulado.
        Rmq=(1.0/8.0)*((1.0/rKpp**2.0)-(1.0/rK)+
     &2.0*(rC**2.0)+((2.0*rC+rB)*(1.0+rKpp*rB))/rKpp-
     &((rB**3.0)*rKpp)/(3.0*(1.0+rB)))

       PRINT *,'Rmq =', Rmq
       PRINT *, 'Raiz de Rmq =', SQRT(Rmq)         

         rB = rB + 0.01

       WRITE(18,*) rb,SQRT(Rmq)

!Com a função acima podemos agora ter todos os valores obtidos
!pelo programa em uma aba diferente, a qual poderá ser usada
!para ser coletada e construírmos um gráfico.

      END DO

      END

PROGRAM RadiusMeanSquare
       IMPLICIT NONE

        !Vamos explicitar aqui todas as variáveis que serão utilizadas

        REAL Rmq, rKpp, rK, rC, rB
        REAL V_0, E_0, hc, M, m_p, m_n
        REAL cTE

        !Vamos declarar os valores das variáveis a serem utilizadas
    
        hc = 197.326    ! hc = hbar
        m_p = 938.272   ! m_p = 1.673x10^-27kg -> 938.272 Mev, massa do próton em MeV, conversão realizada com a equação E=mc^2
        m_n = 939.565   ! m_n = 1,675×10^−27kg -> 939.565 Mev, massa do neutron em MeV, conversão realizada com a equação E=mc^2
        V_0 = 40.0      ! V_0 = 40 Mev, representa a profundidade do poço retangular (modelo de gás do Fermi)
        E_0 = 2.225     ! Energia de ligação E_0 = 2,225 Mev
        rC = 0.4        ! rC = 0,8 fm, raio do próton ?
        rB = 1.89       ! rB = 1,89 fm

        !Precisaremos também das expressões da massa reduzida (M), de rKpp e rK

        M = (m_p * m_n)/(m_n + m_p)

        PRINT *, M

        rK = 1.0/hc * SQRT((2.0*M*(V_0 - E_0)))

        PRINT *, rK

        rKpp = (1.0/hc) * SQRT((2.0*M*E_0))

        PRINT *, rKpp

        !Vamos agora montar a equação a ser calculada, o resultado tem que ser Rmq = 0.8fm

        Rmq = (1.0/8.0) * ( (1.0/rKpp**2.0) - (1.0/rK) + 2.0*(rC**2.0)+ 
     &((2.0*rC+rB)*(1.0+rKpp*rB))/rKpp - 
     &((rB**3.0)*rKpp)/(3.0*(1.0+rB)))

        PRINT *, Rmq 
     
      END


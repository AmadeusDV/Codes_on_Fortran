PROGRAM RadiusMeanSquare
    IMPLICIT NONE

        !Vamos explicitar aqui todas as variáveis que serão utilizadas

        REAL Rmq, rKpp, rK, rC, rB
        REAL V_0, E_0, hc, M, m_p, m_n
        REAL cTE

        !Vamos declarar os valores das variáveis a serem utilizadas
    
        hc = 197.326
        m_p = 938.272   ! m_p = 1.673x10^-27kg -> 938.272 Mev, massa do próton em mega eletronvolts, conversão realizada com a equação E=mc^2
        m_n = 939.565   ! m_n = 1,675×10^−27kg -> 939.565 Mev, massa do neutron em mega eletronvolts, conversão realizada com a equação E=mc^2
        V_0 = 40        ! V_0 = 40 Mev, representa a profundidade do poço retangular (modelo de gás do Fermi)
        E_0 = 2.225     ! Energia de ligação E_0 = 2,225 Mev
        rC = 0.4        ! rC = 0,8 fm, raio do próton
        rB = 1.89       ! rB = 
        cTE = 1

        !Precisaremos também das expressões da massa reduzida (M), de rKpp e rK

        M = (m_p * m_n)/(m_n + m_p)

        PRINT *, M

        rK = 1/hc * ((2*M*(V_0 - E_0))**(cTE/2))

        PRINT *, rK

        rKpp = (1/hc) * ((2*M*E_0)**(cTE/2))

        PRINT *, rKpp

        !Vamos agora montar a equação a ser calculada, o resultado tem que ser Rmq = 0.8fm

        Rmq = (cTE/8) * ( (1/rKpp**2) - (1/rK) + 2*(rC**2) + ((2*rC+rB)*(1+rKpp*rB))/rKpp - ((rB**3)*rKpp)/(3*(1+rB)))

        PRINT *, Rmq 
     
END


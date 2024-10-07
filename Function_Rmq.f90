PROGRAM FunctionRadiusMeanSquare
    IMPLICIT NONE

!Vamos explicitar aqui todas as variáveis que serão utilizadas.

!Agora, queremos construir uma função para o raio médio quadrático, para isso precisamos que ela seja uma variável real.

    REAL Rmq, rKpp, rK, rC, rB
    REAL V_0, E_0, hc, M, m_p, m_n

!Podemos declarar mais uma vez as nossas variáveis a serem utilizadas, porém nem todas serão utilizadas, pois queremos uma função V(b).

    hc = 197.326    ! hc = hbar
    m_p = 938.272   ! m_p = 1.673x10^-27kg -> 938.272 Mev, massa do próton em MeV, conversão realizada com a equação E=mc^2
    m_n = 939.565   ! m_n = 1,675×10^−27kg -> 939.565 Mev, massa do neutron em MeV, conversão realizada com a equação E=mc^2
    !V_0 = 40.0      ! V_0 = 40 Mev, representa a profundidade do poço retangular (modelo de gás do Fermi)
    E_0 = 2.225     ! Energia de ligação E_0 = 2,225 Mev
    !rC = 0.4        ! rC = 0,8 fm, raio do próton ?
    !rB = 1.89       ! rB = 1,89 fm

!Precisaremos também das expressões da massa reduzida (M), de rKpp e rK (?) 

    M = (m_p * m_n)/(m_n + m_p)

     PRINT *, 'M =', M

     rK = 1.0/hc * SQRT((2.0*M*(V_0 - E_0)))

     PRINT *, 'K =', rK

     rKpp = (1.0/hc) * SQRT((2.0*M*E_0))

     PRINT *, 'Kappa =', rKpp

!Agora precisamos construir a nossa função, a qual utilizará os parâmetros acima.
!Como vimos no programa de Yukawa que o Magno nos passou, aquele código resume o processo o qual devemos seguir.
!Devemos construir um LAÇO para que um código em específico sera gerado e termine até quando quisermos que termine, neste caso até um valor máximo para (b).






END

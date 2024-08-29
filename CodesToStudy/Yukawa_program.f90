PROGRAM yukawa
    IMPLICIT NONE

    ! Este código foi feito pelo Prof. Dr. Alexandre Magno para exemplificar como funciona um código em Fortran, além de apresentar o 
    !processo de solução do problema em questão (Programa de Yukawa).
    
        REAL(KIND=16) phi_omega, phi_sigma, Veff
        REAL(KIND=16) g_v,g_s,pi,r,m_v,m_s,hc
    
        g_v = 12.6139D0
        g_s = 10.0289D0
        pi = 3.1415D0
        m_v = 783.0D0
        m_s = 511.198D0
        hc=197.326D0

        PRINT *,'pi ',pi,'gv ',g_v,'gs ',g_s
        PRINT *,'mv ',m_v,'ms ',m_s,'hc ',hc

        r = 0.1D0

        PRINT *,'r ',r
        
        DO WHILE (r .LE. 2.D0 )
            phi_omega = ((g_v**2d0) * EXP(-m_v*r/hc))/(4*pi*r)
            phi_sigma = ((g_s**2d0) * EXP(-m_s*r/hc))/(4*pi*r)
            Veff = phi_omega - phi_sigma
            Veff=Veff*193.0d0

            PRINT *,'phi_omega  ', phi_omega, 'phi_sigma  ',phi_sigma
            PRINT *, 'r Veff'
            PRINT *, r,'  ',Veff

            r = r + 0.01D0

            WRITE(21,*) r,Veff

        end do
        
   END PROGRAM yukawa
program variables
    implicit none

    ! Here we have our variables, its important to be separated of their declarations, that is right below

    ! Variables and their type: integer, real, complex, character and logical

    integer :: amount
    real :: pi
    complex :: frequency
    character :: initial
    logical :: thatsTrue

    ! Declaration of the variables

    amount = 10
    pi = 3.1415927
    frequency = (1.0, 0.5)
    initial = 'A'
    thatsTrue = .true.

    ! Print of the variables

    print *, 'The value of amount is', amount
    print *, 'The value of pi is', pi
    print *, 'The value of frequency is', frequency
    print *, 'The value of character is', initial
    print *, 'The value of thatsTrue is', thatsTrue


end program variables
program read_value
    implicit none

    ! Now lets see how to write in another way a standard output (or stdout), like before when we writed the command 'print', but now is called a standard input (or stdin)

    integer :: age

    print *, 'Please, enter your age: '
    read(*,*) age

    print *, 'Your age is: ', age

end program read_value
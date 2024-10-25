program arithmetic
    implicit none

    !Lets see, now, how to do operations in Fortran. As any language program, to do arithmetic operations we gonna need some symbols:
    ! '**' to expoent;
    ! '*' to multiplication;
    ! '/' to division;
    ! '+' to Addition;
    ! '-' to subtraction.

    !To learn these new expressions, lets create a problem to apply them

    real :: pi
    real :: radius
    real :: height
    real :: area
    real :: volume

    pi = 3.1415927

    print *, 'Enter cylinder base radius: '
    read(*,*) radius

    print *, 'Enter cylinder height: '
    read(*,*) height

    area = pi*radius**2
    volume = area*height

    print *, 'Cylinder radius is ', radius
    print *, 'Cylinder height is ', height
    print *, 'Cylinder area is ', area
    print *, 'Cylinder volume is ', volume

end program arithmetic
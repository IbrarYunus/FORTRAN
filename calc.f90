! FORTRAN CALC 
! Ibrar Yunus <University of St. Andews>


! Takes two numbers (reals) and and operation (char(1)) and
! performs the chosen mathematical operation
program Calc
	
    real :: a, b, answer
    character*1 :: operation

    call header

    print *, "Type the first number: "
    read *, a
    print *, "Type the second number: "
    read *, b
    print *, "Type the operation to perform (+,-,*,/)"
    ! read *, operation
    read (*,"(A1)") operation

    print *, "operation: " , operation
    if (operation .eq. '+') then
    	answer = a + b
		print *, a, " + ", b, " = ", answer
	endif

	if (operation .eq. '-') then
		answer = a - b
		print *, a, " - ", b, " = ", answer
	endif 

	if (operation .eq. '*') then 
		answer = a * b
		print *, a, " * ", b, " = ", answer
	endif

	if (operation .eq. '/') then 
		answer = a / b
		print *, a, " / ", b, " = ", answer
	endif

	print *, "Press ENTER to exit"
    read *
end program Calc
  
subroutine header
	print *,  ACHAR(10),'Ibrar Yunus <University of St. Andrews'
	print *, 'FORTRAN CALC', ACHAR(10)

end subroutine header
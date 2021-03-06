program fibonacci
  implicit none
  integer :: i, f0, f1, fn
  integer, parameter :: nmax = 15, fmax = 650

  write(*,*) 'With integer counter:'

  f0 = 0
  f1 = 1
  write(*,*) f0
  write(*,*) f1
  do i=2, nmax
     fn = f0 + f1
     write(*,*) fn
     f0 = f1
     f1 = fn
  end do

  write(*,*) 'With do while:'
  f0 = 0
  f1 = 1
  write(*,*) f0
  write(*,*) f1
  fn = f1 + f0
  do while (fn < fmax)
     write(*,*) fn
     f0 = f1
     f1 = fn
     fn = f1 + f0
  end do

  write(*,*) 'With explicit exit:'
  f0 = 0
  f1 = 1
  write(*,*) f0
  write(*,*) f1
  do
     fn = f0 + f1
     if (fn > fmax) exit
     write(*,*) fn
     f0 = f1
     f1 = fn
  end do

end program fibonacci

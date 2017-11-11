subroutine threshold_image(image, m, n, threshold, output)
    ! Inputs: image, m, n, threshold.
    ! Output: output
    !   output(i,j) is 1 if image(i,j) > threshold and 0 otherwise.

    integer m, n
    real(8) threshold
    real(8), dimension(m,n) :: image, output

    !f2py intent(in) :: image, threshold
    !f2py intent(hide), depend(image) :: m = shape(image, 0)
    !f2py intent(hide), depend(image) :: n = shape(image, 1)
    !f2py intent(out) output

    ! Loop through columns and rows and threshold the image.
    do j=1,n
        do i=1,m
            if (image(i,j) > threshold) then
                output(i,j) = 1.0
            else
                output(i,j) = 0.0
            end if
        end do
    end do
end subroutine

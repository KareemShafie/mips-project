.data
prompt:         .asciiz "Enter a number: "
label1: .asciiz "Temperature in Fahrenheit is: "
label2:     .asciiz "Area of the circle is: "
label3:     .asciiz "Perimeter of the square is: "
pi:             .float 3.14

.text
.globl main
main:
#to print msg for the user 
    li $v0, 4
    la $a0, prompt
    syscall

# to read int num input from the user
    li $v0, 5
    syscall
    move $t0, $v0    # Store input in $t0

    # 1. Celsius to Fahrenheit #
    li $t1, 9
    mul $t2, $t0, $t1    # $t2 = C * 9
    li $t3, 5
    div $t2, $t3
    mflo $t4             # $t4 = (C * 9) / 5
    addi $t5, $t4, 32    # $t5 = ((C * 9) / 5) + 32

    li $v0, 4
    la $a0, label1
    syscall
    
    # print the result 
    li $v0, 1
    move $a0, $t5
    syscall
    li $v0, 11           # Print newline 
    li $a0, 10
    syscall

    # 2. Area of Circle (π * r^2) #
    mtc1 $t0, $f2         # Move integer r to float register $f2
    cvt.s.w $f2, $f2      # Convert to float
    mul.s $f4, $f2, $f2   # $f4 = r^2

    l.s $f6, pi
    mul.s $f8, $f4, $f6   # $f8 = π * r^2

    li $v0, 4
    la $a0, label2
    syscall
    li $v0, 2
    mov.s $f12, $f8
    syscall
    li $v0, 11           # Print newline
    li $a0, 10
    syscall

    # 3. Perimeter of Square (4 * side) #
    li $t6, 4
    mul $t7, $t0, $t6     # $t7 = 4 * side

    li $v0, 4
    la $a0, label3
    syscall
    li $v0, 1
    move $a0, $t7
    syscall

    #### End Program ####
    li $v0, 10
    syscall

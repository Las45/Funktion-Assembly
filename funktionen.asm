.text


main:
    li $sp, 0x100
    li $t6, 5
    sw $t6, 0($sp)
    addi $sp, $sp, 4

    li $t7, 11
    sw $t7, 0($sp)
    addi $sp, $sp, 4

    jal myadd
    li $t6, 8
    li $t7, 9
    jal myadd
    li $t6, 10
    li $t7, 11
    jal myadd
    lw $t7, 0($sp)
    addi $sp, $sp, -4

myadd:
    lw $t7, 0($sp)
    subi $sp, $sp, -4
    lw $t6, 0($sp)
    subi $sp, $sp, -4
    add $t1, $t7, $t6
    sw $t1, 0($sp)
    addi $sp, $sp, 4
    j $ra
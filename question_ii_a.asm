.data

#answer is on t2
a:
    .word 10, 9, 8, 7, 6

.text

la $t0, a

lw $t2, 0($t0)
lw $t3, 4($t0)
add $t2, $t2, $t3
lw $t3, 8($t0)
sub $t2, $t2, $t3
lw $t3, 12($t0)
add $t2, $t2, $t3
lw $t3, 16($t0)
add $t2, $t2, $t3

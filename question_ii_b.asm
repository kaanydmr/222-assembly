.data

#answer is on t2
b: 
    .word 50, 120, 30, 80, 10, 100

.text
la $t0, b


lw $t2, 0($t0)
lw $t3, 4($t0)
add $t2, $t2, $t3

lw $t3, 8($t0)
lw $t4, 12($t0)

sub $t4, $t3, $t4

sub $t2, $t2, $t4

lw $t3, 16($t0)
sub $t2, $t2, $t3
lw $t3, 20($t0)
add $t2, $t2, $t3


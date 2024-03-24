.data

#answer is on t2
c:
    .word 10, 20, 30, 40, -80, 60

.text
la $t0, c


lw $t2, 0($t0)
lw $t3, 4($t0)
add $t2, $t2, $t3  

lw $t3, 8($t0)
lw $t4, 12($t0)
add $t3, $t3, $t4  

lw $t4, 16($t0)
lw $t5, 20($t0)
sub $t4, $t4, $t5  

sub $t2, $t2, $t3  
sub $t2, $t2, $t4  


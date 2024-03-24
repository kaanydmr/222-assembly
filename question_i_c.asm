.text

#answer is on t0

addi $t0, $zero, 10
addi $t1, $zero, 20
addi $t2, $zero, 30
addi $t3, $zero, 40
addi $t4, $zero, -80
addi $t5, $zero, -60

add $t0, $t0, $t1

add $t2, $t2, $t3

add $t4, $t4, $t5

sub $t0, $t0, $t2
sub $t0, $t0, $t4

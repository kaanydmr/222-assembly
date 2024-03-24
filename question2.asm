.data

values: .word 3, 5, 7, 10, 20, 4, 99, 6, 8, 7 #10 unsigned numbers
minValue: .word 100000


.text

li $t6,0  			#counter which is zero
li $t7,10 			#Number of elements

la $t0, values 			#Saves address of the array
lw $t1, minValue		#Minimum value (in t1)


loop:
slt $t4, $t6, $t7		#while loop
beq $t4,$zero, out		#out condition (counter = 10)

lw $t2, 0($t0)			#Loads the array value to t2

bltu $t2, $t1, update		#if t2 is smaller, sets the new smallest number to minValue
				#if not minValue is still minimum value
addiu $t0 ,$t0, 4		#next array number
addiu $t6, $t6, 1		#counter + 1
j loop				#whle loop

update:
addu $t1, $t2, $zero		#sets the new smallest number to minValue

addiu $t0 ,$t0, 4		#next array number
addiu $t6, $t6, 1		#counter + 1
j loop				#whle loop

out:

sw $t1, minValue		#saves the minimum value in minVal(t1)

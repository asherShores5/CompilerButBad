
addValue:
li $v1, result
jr  $ra
jr  $ra
.end addValue
li $t0, 10
li $t1, 0
# --- CONDITION --- #

while0:
li $t0, 10
li $t1, 10
# --- CONDITION --- #
bne $t0, $t1, false0
# Printing -----------
li $v0, 1
lw $a0, x
syscall
# --- JUMP PAST ELSE --- #
beq $0, $0, jumpElse0

# --- ELSE STMT --- #
false0:
# ---PAST ELSE--->
jumpElse0:
la $a0, x #get address
li $a1, 5 #new value
sw $a1 0($a0) #save new value
blt $t0, $t1, while0
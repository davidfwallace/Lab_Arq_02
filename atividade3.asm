lw x20, g
lw x21, h
lw x22, i
lw x23, j

beq x22, x23, bloco_if

sub x19, x20, x21
beq x0, x0, fim

bloco_if:
add x19, x20, x21

fim:
sw x19, f
halt

f: .word 0x0
g: .word 0xa
h: .word 0x2
i: .word 0x5
j: .word 0x3

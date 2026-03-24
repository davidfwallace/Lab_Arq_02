lw x10, a
lw x11, b
lw x12, m

blt x11, x12, soma

sub x12, x10, x11
beq x0, x0, fim

soma:
add x12, x10, x11

fim:
sw x12, m
halt

a: .word 0x6
b: .word 0xf
m: .word 0x0

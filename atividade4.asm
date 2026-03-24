lw x11, p_str
lw x13, passo

repetir:
lb x10, 0(x11)
beq x10, x0, fim
sb x10, 1024(x0)     
add x11, x11, x13    
beq x0, x0, repetir  

fim:
halt

p_str: .word 0x28
passo: .word 0x1
str1: .string "Hello_World"

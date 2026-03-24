addi x11, x0, 42     # Guarda o valor ASCII do '*' (42) no registrador x11

loop:
lb x10, 1025(x0)     
beq x10, x11, fim    
sb x10, 1024(x0)     
jal x0, loop         

fim:
halt                 

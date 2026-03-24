lw x10, a
    lw x11, b
    
    # m = a
    add x12, x10, x0
    
    # Lógica adaptada para o "dicionário" do CompSim
    blt x11, x12, soma    # Se b < m, pula para fazer a soma
    beq x0, x0, fim       # Pulo incondicional: Se não pulou na linha de cima, pula a soma e vai pro fim

soma:
    add x12, x10, x11

fim:
    sw x12, m
    halt

# Área de Dados (Usando Hexadecimal para garantir)
a: .word 0x6
b: .word 0x7
m: .word 0x0
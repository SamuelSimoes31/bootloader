org 0x7e00
jmp 0x0000:start

data:
	
	;Dados do projeto...
	Serio db 'Serio? Era isso?', 0
	Quase db 'Hmm...',0
	Certo db 'CERTO', 0
	Errado db 'KKKKKKKKKKKKKKKKKKK',0
	Resposta db 'Resposta: ', 0

	QN db 'Qual o seu nome?', 0
	RN db 'Ja vi nomes melhores...', 0

    Q1 db '1 e 1', 0
	R1 db 'TRUE', 0
	I1_0 db '11', 0
	I1_1 db '2', 0
	I1_2 db '1', 0
	Quase1_0 db 'Acorde seu compilador interior', 0
	Quase1_1 db 'toBool()', 0

	Q2 db 'Qual a capital da Assiria?',0
	R2 db 0
	I2 db 'ASSUR', 0
	Quase2_0 db 'A Assiria nem existe mais, maluco', 0
	Quase2_1 db 'Tem resposta nao', 0

	Q3_0 db 'Na noite eu venho, sem ser chamada', 0
	Q3_1 db 'De dia, estou perdida, sem ser roubada', 0
	Q3_2 db 'Sou como um diamante, mas nao sou joia', 0
	Q3_3 db 'O que eu sou?', 0
	R3 db 'ESTRELA', 0
	I3 db 0
	Quase3 db 'Brilha brilha', 0

	Q4_0 db 'Ha 10 velas acesas', 0
	Q4_1 db 'Se o vento apagar 3, quantas restam?', 0
	R4 db '10', 0
	I4 db '7', 0
	Quase4 db 'Ah ah ah, apagado', 0

	Q5_0 db 'Qual a velocidade no ar', 0
	Q5_1 db 'de uma andorinha sem carga? (em km/h)', 0
	R5 db '32', 0

	Q6_0 db 'E carregando um coco?', 0
	R6 db '0', 0
	I6 db 0
	Quase6 db 'Andorinha maromba, ein?', 0

	Q7_0 db 'Polones', 0
	R7 db '0', 0
	I7_0 db 'Poloneses', 0
	I7_1 db 'Sete', 0
	I7_1 db '7', 0
	Quase7 db 'Andorinha maromba, ein?', 0

	QCOR db 'Ha 1 impostor entre nos', 0
	QVOTO db 'SEU VOTO: ', 0
	Qnot db ' nao era o Impostor', 0
	Qyes db ' era o Impostor', 0
	Qremain db 'impostor restante', 0
	Q1imp db '1 ',0
	Q0imp db '0 ',0
	BoolImp db 0

	VERMELHO db 'VERMELHO', 0
	AZUL db 'AZUL', 0
	VERDE db 'VERDE', 0
	ROSA db 'ROSA', 0
	; LARANJA db 'LARANJA', 0
	AMARELO db 'AMARELO', 0
	CINZA db 'CINZA', 0
	BRANCO db 'BRANCO', 0
	ROXO db 'ROXO', 0
	MARROM db 'MARROM', 0
	CIANO db 'CIANO', 0
	LIMAO db 'VERDE CLARO', 0

	Entrada times 101 db 0
	Nome times 101 db 0

set_cursor:
	mov ah, 02h
	mov al, 20h
	mov bh, 00h
	int 10h

	ret

; Essa função recebe uma string no reg si e a compara à string em (Resposta), ao mesmo tempo permitindo uma margem de erro entre elas, localizada no reg cx
; O resultado é armazenado em cx, caso suficientemente iguais, cx = 1, no contrário, cx = 0
compare_input_memory:
	; Setar segundo ponteiro de string pra Entrada, posição onde é armazenada os inputs da função get_string
	mov di, Entrada
	cld ; Zera a flag de direção de operações de string (operações de string incrementam di e si)
	.LOOP:

		; Print de debug
		; mov ah, 0eh
		; mov al, '-'
		; mov bl, 7
		; int 10h

		; Compara os dois caracteres apontados por si(Resposta da pergunta) e di(Entrada do usuario), e incrementa ambos ponteiros
		; Se forem iguais, pula pra .CMP0, onde comparamos eles com 0 pra saber se chegamos no final da comparação e as strings são iguais
		cmpsb
		je .CMP0

		; Voltar di e si pra poder checkar os caracteres comparados em cmpsb
		dec si
		dec di

		; Carregar o caractere de si(Resposta) e compara ele com 0, se for, pula pra .END (Strings não são iguais)
		lodsb
		cmp al, 0
		je .END

		; Salva si em bx pra n ser perdido, e move di pra si pra poder comparar o caractere de di com 0, se for, pula pra .END (Strings não são iguais)
		mov bx, si
		mov si, di
		lodsb
		cmp al, 0
		je .END

		; Retorna os endereços de (Resposta) e (Entrada) a seus respectivos registradores
		mov di, si
		mov si, bx

		; Compara se o contador de erros permitidos chegou a 3, se sim, acabou a função e elas não são iguais
		; Senão, decrementa o contador de erros permitidos e volta pro loop de checkagem de igualdade
		inc cx
		cmp cx, 3
		jge return
		jmp .LOOP

	; Função que checka se o caracter de si na última comparação é 0, se for, ambas as strings chegaram em seu fim nas comparações,
	; logo são suficientemente iguais, e a função acaba.
	; Caso não seja, volta ao loop de checkagem de igualdade
	.CMP0:
		dec si
		lodsb
		cmp al, 0
		jne .LOOP

		ret

	; Função que seta cx como 3, o que representa que as strings não são suficientemente iguais e a função acaba
	.END:
		mov cx, 3
		ret

print_string:
	call print_string_nobreak
	
	mov ah, 0eh
	mov al, 0xd
	int 10h
	mov al, 0xa
	int 10h

	ret

print_string_nobreak:
	; Mesmo que o printstring, mas no end não é printado break, logo o ponteiro de escrita continua na mesma linha
	lodsb
	cmp al,0
	je .end

	mov ah, 0eh
	; mov bl, 15 Pode escolher a cor antes de chamar a função
	int 10h

	; mov dx, 0
	; .delay_print:
	; inc dx
	; mov cx, 0
	; 	.time:
	; 		; inc cx
	; 		; cmp cx, 65535
	; 		cmp cx, 0
	; 		jne .time

	; cmp dx, 1000
	; jne .delay_print

	jmp print_string_nobreak

	.end:
		; Única mudança
		ret

delay:
	dec dx
	mov cx, 0
		.time:
			inc cx
			cmp cx, 10000
			jne .time

	cmp dx, 0
	jne delay
ret

print_string_lento:
	lodsb
	cmp al,0
	je end

	mov ah, 0eh
	; mov bl, 0ah
	int 10h

	mov dx, 3000
    call delay

	jmp print_string_lento

    end:
	; call endl
ret


; Função que lê caracteres da entrada e os salvam no espaço de memória (Entrada)
get_string_mem:
	cld
	mov di, Entrada

get_nome:

	.LOOP:
		; Lendo caractere
		mov ah, 0
		int 16h

		; Comparando com backspace para tratá-lo
		cmp al, 0x8
		je .BCKSPC

		; Printando caractere
		mov ah, 0xe
		mov bl, 7
		int 10h

		; Comparando com enter para terminar a leitura 
		cmp al, 13
		je .END
		
		; Checkando se é minusculo para salvar como maiusculo
		cmp al, 'a'
		jl .STOSB
		cmp al, 'z'
		jg .STOSB
		sub al, 32

		; Salvando caractere na memória apontada por di (Entrada) e volta ao loop
		.STOSB:
			stosb
			jmp .LOOP

	.END:
		; Quebra de linha pra deixar bonitinho, acho que não vai ser necessário
		mov ah, 0xe
		mov al, 10
		mov bl, 7
		int 10h

		; Armazendando 0 no próximo espaço de memória de di(Entrada) para representar o final da string, e então retornar ao endereço da pilha
		mov al, 0
		stosb
		ret

	.BCKSPC: ; R _

		; Jogando o endereço de di para si e decrementando-o pra checkar se depois do backspace di ainda apontaria pra uma posição dentro de (Entrada)
		; Caso não, voltamos ao loop
		mov si, di
		dec si
		lodsb ; R _
		cmp al, 0
		je .LOOP

		; Printando o backspace, que por si só apenas retorna o ponteiro de escrita em uma unidade, sem apagar nada
		mov ah, 0xe
		mov al, 0x8
		mov bl, 7
		int 10h

		; Printando espaço, de modo que sobreescreva o caractere que o ponteiro de escrita aponta
		mov ah, 0xe
		mov al, ' '
		mov bl, 7
		int 10h

		; Printando backspace novamente, para deixar o ponteiro de escrita apontando para o espaço que será ocupado pela próxima letra lida
		mov ah, 0xe
		mov al, 8
		mov bl, 7
		int 10h

		; Decrementando di, para que a próxima escrita em (Entrada) sobreescreva o caractere mais recente
		dec di

		jmp .LOOP

return:
	ret

TELA_QUASE:

	mov ah, 0
	mov al, 13
    int 10h

	; Muda cor do background
	mov ah, 0xb  
	mov bh, 0    
	mov bl, 0x1  
	int 10h	

	mov dh, 10
	mov dl, 17
	call set_cursor

	mov si, Quase
	mov bl, 0eh
	call print_string

	mov ah, 0
	int 16h

	ret

TELA_ERRADO:

	mov ah, 0
	mov al, 13
    int 10h

	; Muda cor do background
	; mov ah, 0xb  
	; mov bh, 0    
	; mov bl, 04h  
	; int 10h	

	mov dh, 10
	mov dl, 11
	call set_cursor

	mov si, Entrada
	mov bl, 04h
	call print_string

	mov ah, 0
	int 16h

	mov dh, 12
	mov dl, 13
	call set_cursor

	mov si, Serio
	call print_string

	mov ah, 0
	int 16h

	ret

TELA_NOT_IMPOSTOR:

	mov ah, 0
	mov al, 13
    int 10h

	; Muda cor do background
	; mov ah, 0xb  
	; mov bh, 0    
	; mov bl, 04h  
	; int 10h	

	mov dh, 10
	mov dl, 7   ;lembrar de ajustar o dl para cada cor depois
	call set_cursor

	mov si, Entrada
	mov bl, 15
	call print_string_lento

	mov cl, byte[BoolImp]
	cmp cl, 0
	jne .EH_ELE
		mov si, Qnot
		mov bl, 15
		call print_string_lento

		mov dx, 16000
		call delay

		mov dh, 12
		mov dl, 10
		call set_cursor

		mov si, Q1imp
		mov bl, 15
		call print_string_nobreak
		jmp .end
	.EH_ELE:
		mov si, Qyes
		mov bl, 15
		call print_string_lento

		mov dx, 16000
		call delay

		mov dh, 12
		mov dl, 10
		call set_cursor

		mov si, Q0imp
		mov bl, 15
		call print_string_nobreak		
	.end:
	mov si, Qremain
	mov bl, 15
	call print_string

	mov ah, 0
	int 16h

	; mov dx, 80000
    ; call delay

	ret

TELA_EJECTED:
	mov cx, 0
	push cx
	
	.LOOP:	
	;limpa tela
	mov ah, 0
	mov al, 13
    int 10h

	mov dh, 12
	mov dl, cl
	call set_cursor

	mov ah, 0eh
	mov al, '@'
	int 10h

	mov dx, 2000
    call delay

	pop cx ;resgata cl
	inc cx
	cmp cx, 41
	je .end
	push cx ;guardar cl
	jmp .LOOP

	.end:
	; mov ah, 0
	; int 16h

ret 

start:
    xor ax, ax
    mov ds, ax
    mov es, ax
    
    ;Código do projeto...

    mov ax, 0
    mov ds, ax

	push ax;

    int 10h

    mov al, 13
    int 10h

	; Muda cor do background
	; mov ah, 0xb  
	; mov bh, 0     
	; mov bl, 1   
	; int 10h	

	;jmp PERGUNTACOR

PEGANOME:

	mov ah, 0
	mov al, 13
    int 10h

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 05h
	mov dl, 12
	call set_cursor

	; Printando primeira pergunta
    mov si, QN
	mov bl, 10
    call print_string

	mov dh, 17h
	mov dl, 0
	call set_cursor

	; Printando "Resposta: "
	mov si, Resposta
	mov bl, 15
	call print_string_nobreak

	cld
	mov di, Nome
	call get_nome

PRE1:
	mov ah, 0
	mov al, 13
    int 10h

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 09h
	mov dl, 9
	call set_cursor

	; Printando primeira pergunta
    mov si, RN
	mov bl, 14
    call print_string

	mov ah, 0
	int 16h

PERGUNTA1:

	mov ah, 0
	mov al, 13
    int 10h

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 05h
	mov dl, 18
	call set_cursor

	; Printando primeira pergunta
    mov si, Q1
	mov bl, 15
    call print_string

	mov dh, 17h
	mov dl, 0
	call set_cursor

	; Printando "Resposta: "
	mov si, Resposta
	mov bl, 15
	call print_string_nobreak

	; Salvando a leitura da entrada na pilha até apertarem enter
	call get_string_mem

	mov ax, PERGUNTA1
	push ax

	mov si, I1_0
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 0
	je TELA_QUASE1_0

	mov si, I1_1
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 0
	je TELA_QUASE1_0

	mov si, I1_2
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 0
	je TELA_QUASE1_1

	; Movemos ao ponteiro de primeira string da comparação pra a primeira resposta (R1), e setamos o contador de erros para 0 (cx)
	; e então chamamos a função de comparação entre a string de si e a string em (Entrada)
	mov si, R1
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 3; Se cx = 3, não são suficientemente iguais
	je TELA_ERRADO
	cmp cx, 0
	je PERGUNTA2
	jmp TELA_QUASE

TELA_QUASE1_0:
	mov ah, 0
	mov al, 13
    int 10h

	mov dh, 10
	mov dl, 5
	call set_cursor

	mov si, Quase1_0
	mov bl, 0eh
	call print_string

	mov ah, 0
	int 16h

	ret

TELA_QUASE1_1:
	mov ah, 0
	mov al, 13
    int 10h

	mov dh, 10
	mov dl, 16
	call set_cursor

	mov si, Quase1_1
	mov bl, 0eh
	call print_string

	mov ah, 0
	int 16h

	ret

PERGUNTA2:
	pop ax

	mov ah, 0
	mov al, 13
    int 10h

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 05h
	mov dl, 7
	call set_cursor

	; Printando pergunta
    mov si, Q2
	mov bl, 15
    call print_string

	mov dh, 17h
	mov dl, 0
	call set_cursor

	; Printando "Resposta: "
	mov si, Resposta
	mov bl, 15
	call print_string_nobreak

	; Salvando a leitura da entrada na pilha até apertarem enter
	call get_string_mem

	mov ax, PERGUNTA2
	push ax

	mov si, I2
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 3
	jl TELA_QUASE2
	; Movemos ao ponteiro de primeira string da comparação pra a primeira resposta (R1), e setamos o contador de erros para 0 (cx)
	; e então chamamos a função de comparação entre a string de si e a string em (Entrada)
	mov si, R2
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 3; Se cx = 3, não são suficientemente iguais
	je TELA_ERRADO
	cmp cx, 0
	je PERGUNTA3
	jmp TELA_QUASE

TELA_QUASE2:
	mov ah, 0
	mov al, 13
    int 10h

	mov dh, 9
	mov dl, 4
	call set_cursor

	mov si, Quase2_0
	mov bl, 0eh
	call print_string

	mov ah, 0
	int 16h

	mov dh, 11
	mov dl, 12
	call set_cursor

	mov si, Quase2_1
	mov bl, 0eh
	call print_string

	mov ah, 0
	int 16h

	ret

PERGUNTA3:
	pop ax

	mov ah, 0
	mov al, 13
    int 10h

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 05h
	mov dl, 3
	call set_cursor

	; Printando pergunta
    mov si, Q3_0
	mov bl, 15
    call print_string

	mov ah, 0
	int 16h

	mov dh, 07h
	mov dl, 1
	call set_cursor

	; Printando pergunta
    mov si, Q3_1
	mov bl, 15
    call print_string

	mov ah, 0
	int 16h

	mov dh, 09h
	mov dl, 1
	call set_cursor

	; Printando pergunta
    mov si, Q3_2
	mov bl, 15
    call print_string

	mov ah, 0
	int 16h

	mov dh, 11
	mov dl, 14
	call set_cursor

	; Printando pergunta
    mov si, Q3_3
	mov bl, 15
    call print_string

	mov dh, 17h
	mov dl, 0
	call set_cursor

	; Printando "Resposta: "
	mov si, Resposta
	mov bl, 15
	call print_string_nobreak

	; Salvando a leitura da entrada na pilha até apertarem enter
	call get_string_mem

	mov ax, PERGUNTA3
	push ax

	mov si, I3
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 0
	je TELA_QUASE3

	; Movemos ao ponteiro de primeira string da comparação pra a primeira resposta (R1), e setamos o contador de erros para 0 (cx)
	; e então chamamos a função de comparação entre a string de si e a string em (Entrada)
	mov si, R3
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 3; Se cx = 3, não são suficientemente iguais
	je TELA_ERRADO
	cmp cx, 0
	je PERGUNTA4
	jmp TELA_QUASE

TELA_QUASE3:
	mov ah, 0
	mov al, 13
    int 10h

	mov dh, 10
	mov dl, 14
	call set_cursor

	mov si, Quase3
	mov bl, 0eh
	call print_string

	mov ah, 0
	int 16h

	ret

PERGUNTA4:
	pop ax

	mov ah, 0
	mov al, 13
    int 10h

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 05h
	mov dl, 11
	call set_cursor

	; Printando pergunta
    mov si, Q4_0
	mov bl, 15
    call print_string

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 07h
	mov dl, 2
	call set_cursor

	; Printando pergunta
    mov si, Q4_1
	mov bl, 15
    call print_string

	mov dh, 17h
	mov dl, 0
	call set_cursor

	; Printando "Resposta: "
	mov si, Resposta
	mov bl, 15
	call print_string_nobreak

	; Salvando a leitura da entrada na pilha até apertarem enter
	call get_string_mem

	mov ax, PERGUNTA4
	push ax

	mov si, I4
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 0
	je TELA_QUASE4
	; Movemos ao ponteiro de primeira string da comparação pra a primeira resposta (R1), e setamos o contador de erros para 0 (cx)
	; e então chamamos a função de comparação entre a string de si e a string em (Entrada)
	mov si, R4
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 1; Se cx = 3, não são suficientemente iguais
	jg TELA_ERRADO
	cmp cx, 0
	je PERGUNTA5
	jmp TELA_QUASE

TELA_QUASE4:
	mov ah, 0
	mov al, 13
    int 10h

	mov dh, 10
	mov dl, 12
	call set_cursor

	mov si, Quase4
	mov bl, 0eh
	call print_string

	mov ah, 0
	int 16h

	ret

PERGUNTA5:
	pop ax

	mov ah, 0
	mov al, 13
    int 10h

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 05h
	mov dl, 8
	call set_cursor

	; Printando pergunta
    mov si, Q5_0
	mov bl, 15
    call print_string

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 07h
	mov dl, 2
	call set_cursor

	; Printando pergunta
    mov si, Q5_1
	mov bl, 15
    call print_string

	mov dh, 17h
	mov dl, 0
	call set_cursor

	; Printando "Resposta: "
	mov si, Resposta
	mov bl, 15
	call print_string_nobreak

	; Salvando a leitura da entrada na pilha até apertarem enter
	call get_string_mem

	mov ax, PERGUNTA5
	push ax

	; Movemos ao ponteiro de primeira string da comparação pra a primeira resposta (R1), e setamos o contador de erros para 0 (cx)
	; e então chamamos a função de comparação entre a string de si e a string em (Entrada)
	mov si, R5
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 1; Se cx = 3, não são suficientemente iguais
	jg TELA_ERRADO
	cmp cx, 0
	je PERGUNTA6
	jmp TELA_QUASE

PERGUNTA6:
	
	pop ax

	mov ah, 0
	mov al, 13
    int 10h

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 05h
	mov dl, 8
	call set_cursor

	; Printando pergunta
    mov si, Q6_0
	mov bl, 15
    call print_string
	
	; Setando cursor para Resposta
	mov dh, 17h
	mov dl, 0
	call set_cursor

	; Printando "Resposta: "
	mov si, Resposta
	mov bl, 15
	call print_string_nobreak

	; Salvando a leitura da entrada na pilha até apertarem enter
	call get_string_mem

	mov ax, PERGUNTA6
	push ax

	; Movemos ao ponteiro de primeira string da comparação pra a sexta resposta (R6), e setamos o contador de erros para 0 (cx)
	; e então chamamos a função de comparação entre a string de si e a string em (Entrada)
	mov si, R6
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 1; Se cx = 3, não são suficientemente iguais
	jg TELA_ERRADO
	cmp cx, 0
	je PERGUNTA7
	jmp TELA_QUASE6
TELA_QUASE6:
	mov ah, 0
	mov al, 13
    int 10h

	mov dh, 10
	mov dl, 12
	call set_cursor

	mov si, Quase6
	mov bl, 0eh
	call print_string

	mov ah, 0
	int 16h

	ret

PERGUNTA7:
	
	pop ax

	mov ah, 0
	mov al, 13
    int 10h

	xor cx, cx

	.LOOP7:
		; Colocando o cursor de escrita da tela na posição certa
		mov dh, 05h
		mov dl, 8
		call set_cursor

		; Printando pergunta
		mov si, Q7_0
		mov bl, 15
		call print_string
		inc cx
		cmp cx, 7
		jl .LOOP7
	
	
	; Setando cursor para Resposta
	mov dh, 17h
	mov dl, 0
	call set_cursor

	; Printando "Resposta: "
	mov si, Resposta
	mov bl, 15
	call print_string_nobreak

	; Salvando a leitura da entrada na pilha até apertarem enter
	call get_string_mem

	mov ax, PERGUNTA7
	push ax

	; Movemos ao ponteiro de primeira string da comparação pra a sexta resposta (R6), e setamos o contador de erros para 0 (cx)
	; e então chamamos a função de comparação entre a string de si e a string em (Entrada)
	mov si, R7
	mov cx, 0
	call compare_input_memory
	
	cmp cx, 1; Se cx = 3, não são suficientemente iguais
	jg TELA_ERRADO
	cmp cx, 0
	je PERGUNTACOR
	jmp TELA_QUASE7
	
TELA_QUASE7:
	mov ah, 0
	mov al, 13
    int 10h

	mov dh, 10
	mov dl, 12
	call set_cursor

	mov si, Quase6
	mov bl, 0eh
	call print_string

	mov ah, 0
	int 16h

	ret

PERGUNTACOR:
	pop ax

	mov ah, 0
	mov al, 13
    int 10h

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 07h
	mov dl, 9h
	call set_cursor

	; Printando pergunta
    mov si, QCOR
	mov bl, 15
    call print_string


	mov dh, 17h
	mov dl, 0
	call set_cursor

	; Printando "Resposta: "
	mov si, QVOTO
	mov bl, 15
	call print_string_nobreak

	; Salvando a leitura da entrada na pilha até apertarem enter
	call get_string_mem

	mov ax, PERGUNTACOR
	push ax

	.VERMELHO:
	mov si, VERMELHO
	mov cx, 0
	call compare_input_memory
	cmp cx, 0
	jne .AZUL
	mov bl, 4 ; vermelho
	jmp .NOT_IMPOSTOR

	.AZUL:
	mov si, AZUL
	mov cx, 0
	call compare_input_memory
	cmp cx, 0
	jne .VERDE
	mov bl, 1 ; AZUL
	jmp .NOT_IMPOSTOR
	
	.VERDE:
	mov si, VERDE
	mov cx, 0
	call compare_input_memory
	cmp cx, 0
	jne .ROSA
	mov bl, 2 ; VERDE
	jmp .NOT_IMPOSTOR

	.ROSA:
	mov si, ROSA
	mov cx, 0
	call compare_input_memory
	cmp cx, 0
	jne .AMARELO
	mov bl, 13 ; ROSA
	jmp .NOT_IMPOSTOR

	.AMARELO:
	mov si, AMARELO
	mov cx, 0
	call compare_input_memory
	cmp cx, 0
	jne .CINZA
	mov bl, 14 ; AMARELO
	jmp .NOT_IMPOSTOR

	.CINZA:
	mov si, CINZA
	mov cx, 0
	call compare_input_memory
	cmp cx, 0
	jne .BRANCO
	mov bl, 7 ; CINZA
	jmp .NOT_IMPOSTOR

	.BRANCO:
	mov si, BRANCO
	mov cx, 0
	call compare_input_memory
	cmp cx, 0
	jne .ROXO
	mov bl, 15 ; BRANCO
	jmp .NOT_IMPOSTOR

	.ROXO:
	mov si, ROXO
	mov cx, 0
	call compare_input_memory
	cmp cx, 0
	jne .MARROM
	mov bl, 5 ; ROXO
	jmp .NOT_IMPOSTOR

	.MARROM:
	mov si, MARROM
	mov cx, 0
	call compare_input_memory
	cmp cx, 0
	jne .CIANO
	mov bl, 6 ; MARROM
	; jmp .NOT_IMPOSTOR

	.NOT_IMPOSTOR:
	call TELA_EJECTED
	je TELA_NOT_IMPOSTOR

	.CIANO:
	mov si, CIANO
	mov cx, 0
	call compare_input_memory
	cmp cx, 0
	je .THE_IMPOSTOR

	.ERRADO:
	jmp TELA_ERRADO

	.THE_IMPOSTOR:
	mov bl, 11 ; CIANO
	call TELA_EJECTED
	pop ax ;tirar o PERGUNTACOR: da pilha
	mov byte[BoolImp], 1
	call TELA_NOT_IMPOSTOR

VICTORY:


jmp $
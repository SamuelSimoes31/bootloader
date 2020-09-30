org 0x7e00
jmp 0x0000:start

data:
	
	;Dados do projeto...
	CERTO db 'CERTO', 0
	ERRADO db 'ERRADO',0
    Q1 db 'Pergunta 1?', 0
	Resposta db 'Resposta: ', 0
	R1 db 'RESPOSTA 1', 0
	Entrada times 101 db 0

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
		je return
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
	lodsb
	cmp al,0
	je .end

	mov ah, 0eh
	; mov bl, 15
	int 10h

	mov dx, 0
	.delay_print:
	inc dx
	mov cx, 0
		.time:
			; inc cx
			; cmp cx, 65535
			cmp cx, 0
			jne .time

	cmp dx, 1000
	jne .delay_print

	jmp print_string

	.end:
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
	; mov bl, 15
	int 10h

	mov dx, 0
	.delay_print:
	inc dx
	mov cx, 0
		.time:
			; inc cx
			; cmp cx, 65535
			cmp cx, 0
			jne .time

	cmp dx, 1000
	jne .delay_print

	jmp print_string_nobreak

	.end:
		; Única mudança
		ret

; Função que lê caracteres da entrada e os salvam no espaço de memória (Entrada)
get_string_mem:
	cld
	mov di, Entrada

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

PERGUNTA1:

	; Colocando o cursor de escrita da tela na posição certa
	mov dh, 05h
	mov dl, 15
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

	; Movemos ao ponteiro de primeira string da comparação pra a primeira resposta (R1), e setamos o contador de erros para 0 (cx)
	; e então chamamos a função de comparação entre a string de si e a string em (Entrada)
	mov si, R1
	mov cx, 0
	call compare_input_memory

	cmp cx, 3; Se cx = 3, não são suficientemente iguais
	je PERGUNTA1F
	mov bl, 0ah
	mov si, CERTO
	call print_string_nobreak
	jmp $

	PERGUNTA1F:
	mov bl, 0ch
	mov si, ERRADO
	call print_string_nobreak

jmp $
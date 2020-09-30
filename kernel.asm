org 0x7e00
jmp 0x0000:start

data:
	
	;Dados do projeto...
	CERTO db 'CERTO',0
	ERRADO db 'ERRADO',0
    Q1 db 'Pergunta 1?', 0
	Resposta db 'Resposta: ', 0
	R1 db 'Resposta 1', 0
	Entrada times 101 db 0

set_cursor:
	mov ah, 02h
	mov al, 20h
	mov bh, 00h
	int 10h

	ret

compare_input_memory:
	mov di, Entrada
	cld
	.LOOP:

		; mov ah, 0eh
		; mov al, '-'
		; mov bl, 7
		; int 10h

		cmpsb
		je .CMP0

		dec si
		dec di

		lodsb
		cmp al, 0
		je .END

		mov bx, si
		mov si, di
		lodsb
		cmp al, 0
		je .END

		mov di, si
		mov si, bx

		cmp cx, 0
		je return
		dec cx
		jmp .LOOP

	.CMP0:
		dec si
		lodsb
		cmp al, 0
		jne .LOOP

		mov cx, 1
		ret

	.END:
		mov cx, 0
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

; Função que lê caracteres da entrada e os salvam na pilha
get_string:

	; Salvando o endereço de retorno da pilha no reg c
	pop cx

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

		; Salvando caractere na pilha
		push ax

		; Comparando com enter para terminar a leitura
		cmp al, 13
		jne .LOOP

		; Removendo caractere do enter da pilha
		pop ax

		; Quebra de linha pra deixar bonitinho, acho que não vai ser necessário
		mov ah, 0xe
		mov al, 10
		mov bl, 7
		int 10h

		; Retornando o endereço de retorno à pilha a partir do reg c
		push cx
		
		ret

	; Tratando o backspace
	.BCKSPC:
		; Removendo o caractere da pilha mais recente
		pop ax

		; Caso o valor da pilha seja zero representa que pilha está vazia, logo pushamos o zero de volta e nada é feito
		cmp al, 0
		je .PUSH0

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

		; Retorno ao loop de leitura
		jmp .LOOP

	.PUSH0:
		push 0
		jmp .LOOP

get_string_mem:
	cld
	mov di, Entrada

	.LOOP:

		mov ah, 0
		int 16h

		cmp al, 0x8
		je .BCKSPC

		mov ah, 0xe
		mov bl, 7
		int 10h

		cmp al, 13
		je .END

		stosb
		jmp .LOOP

	.END:
		; Quebra de linha pra deixar bonitinho, acho que não vai ser necessário
		mov ah, 0xe
		mov al, 10
		mov bl, 7
		int 10h

		mov al, 0
		stosb
		ret

	.BCKSPC: ; R _

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

	; Printando "Resposta:"
	mov si, Resposta
	mov bl, 15
	call print_string_nobreak

	; Salvando a leitura da entrada na pilha até apertarem enter
	call get_string_mem

	; Aqui era pra ser a comparação entre o que tá na pilha e as respostas, mas por enquanto só printa uma string qualquer
	mov si, R1
	mov cx, 2
	call compare_input_memory

	cmp cx, 0
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
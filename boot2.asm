org 0x500
jmp 0x0000:start
 
;como o endereço dado para o kernel é 0x7e00, devemos
;utilizar o método de shift left (hexadecimal)
;e somar o offset no adress base, para rodarmos o kernel.

str_runningKernel db 'VAI KERNEL, EU ESCOLHO VOCE', 0
str_olaHumano db 'Ola humano. O que fazes aqui?', 0
str_desafiar db 'Voce acha que pode me derrotar?', 0

delay:
	dec dx
	mov cx, 0
		.time:
			; inc cx
			; cmp cx, 10000
            cmp cx, 0
			jne .time

	cmp dx, 0
	jne delay
ret

printT:
    mov bh, 3
    .printT:
        mov dx, 20000
        call delay
        mov ah, 0eh ;modo de vídeo
        mov al, '.' ;caractere p/ imprimir
        int 10h

        dec bh
        cmp bh, 0
        jne .printT

    call endl

ret

endl:
    mov ah, 0eh
    mov al, 0xd
    int 10h
    mov al, 0xa
    int 10h
ret

print_string:
	lodsb
	cmp al,0
	je end

	mov ah, 0eh
	; mov bl, 0ah
	int 10h

	mov dx, 2000
    call delay

	jmp print_string

    end:
	; call endl
ret

start:
    xor ax, ax
    mov ds, ax
    mov es, ax


    ;parte pra printar as mensagens que quisermos
    ;modo video
	mov ah, 0
	mov al, 12h
	int 10h
	;setarCursor
	mov ah, 02h
	mov bh, 00
	mov dh, 0
	mov dl, 0
	int 10h

    mov si, str_olaHumano
    mov bl, 0ah
    call print_string
    call printT

    mov si, str_desafiar
    mov bl, 0eh
    call print_string
    call printT

    mov si, str_runningKernel
    mov bl, 0ch
    call print_string
    call printT




    reset:
        mov ah, 00h ;reseta o controlador de disco
        mov dl, 0   ;floppy disk
        int 13h

        jc reset    ;se o acesso falhar, tenta novamente

        jmp load_kernel

    load_kernel:
        ;Setando a posição do disco onde kernel.asm foi armazenado(ES:BX = [0x7E00:0x0])
        mov ax,0x7E0	;0x7E0<<1 + 0 = 0x7E00
        mov es,ax
        xor bx,bx		;Zerando o offset

        mov ah, 0x02 ;le o setor do disco
        mov al, 20  ;porção de setores ocupados pelo kernel.asm
        mov ch, 0   ;track 0
        mov cl, 3   ;setor 3
        mov dh, 0   ;head 0
        mov dl, 0   ;drive 0
        int 13h

        jc load_kernel ;se o acesso falhar, tenta novamente

        jmp 0x7e00  ;pula para o setor de endereco 0x7e00, que é o kernel

  


    times 510-($-$$) db 0 ;512 bytes
    dw 0xaa55	
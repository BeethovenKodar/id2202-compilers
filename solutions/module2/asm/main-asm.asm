%use altreg
    global  main
    extern  puts
		extern  putchar
    extern  fflush
		extern 	atoi
		extern  factorial_message


        	section .data

help_msg       	db      "usage: <command> <arg1> <arg2>", 0xA, 0xA  ; line break (0xA)
help_msg2       db      "commands:", 0xA
help_msg3       db      "  e   Echo arguments arg1 and arg2", 0xA
help_msg4       db      "  m   Prints out a magic number", 0xA
help_msg5       db      "  +   Adds together arg1 and arg2", 0xA
help_msg6       db      "  !   Prints out the factorial value of", 0xA
help_msg7       db      "      arg1, as well as the message in arg2", 0xA, 0


			section .text

main:		
	mov     rbp, rdi        	; argc in rdi (64bit). Save in rbp (64bit)
	mov     rbx, rsi        	; argv in rsi (64bit). Save in rbx (64bit)

	cmp		rbp, 0x4			; if rbp < 3 jump to exit label
	jl	exit_menu

	mov 	r10, [rbx + 8]		; 'r10' contains pointer to first program argument
	mov 	dil, [r10 + 1]		; 'dil' contains second byte of value pointed to by 'r10'
	cmp 	dil, 0				; check if second byte is NUL
	jne	exit_menu
	
	mov		dil, [r10]
	cmp 	dil, 'e'
		je 	echo
	cmp 	dil, 'm'
		je	magic
	cmp 	dil, '+'
		je	addition
	cmp 	dil, '!'
		je	fact
	jmp exit_menu				; command not found


echo:
	mov 	r10, [rbx + 16]		; 'r10' is argument 1 pointer
	mov		r11, [rbx + 24] 	; 'r11' is argument 2 pointer
	mov		rdi, r10
	push 	r11
	call	puts
	pop 	r11
	mov 	rdi, r11
	call	puts
	mov 	eax, 0
	ret


print_int:
	mov 	r10, rdi			; rbp = x = provided int
	cmp 	r10, 0
	jge		after_neg_check		; x >= 0
	mov		rdi, '-'
	push 	r10
	call 	putchar
	pop 	r10
	mov		r11, 0
	sub		r11, 1				; 'r11' holds (0 - 1)
	mov		rax, r11			; 'rax' holds -1
	mul		r10					; x = x * (-1)
	mov		r10, rax			; move result 'rax' into 'r10'
after_neg_check:
	mov		r11, 1000000		; i = 1000000
	mov		r12, 0				; b = 0
loop_body:
	cmp 	r10, r11		
	jge		if_was_true			; x >= i
	cmp 	r12, 0				
	jg		if_was_true			; b > 0
	cmp		r10, 0
	jne		after_put_char		; x != 0
	cmp 	r11, 1
	jne 	after_put_char		; i != 1
	jmp		if_was_true			; x == 0 && i == 1
if_was_true:
	mov 	rax, r10			; rax = x
	mov     rdx, 0				; rdx must be zero
	div		r11					; x (rax) / i (r11)
	add		rax, '0'			; convert to ascii symbol
	mov		rdi, rax			; prepare putchar('0' + x / i)
	push	r10
	push	r11
	push	r12
	call 	putchar
	pop		r12
	pop		r11
	pop		r10
	mov		r12, 1
after_put_char:
	mov		rax, r10			; rax = x
	mov   rdx, 0 				; rdx must be zero
	div		r11					  ; x (rax) / i (r11)
	mov		r10, rdx			; rem of division is new x (r10)
	mov		rax, r11			; rax = i
	mov   rdx, 0	 			; rdx must be zero
	mov		r13, 10				; denominator 10 in register
	div		r13					  ; i = i (rax) / 10 (rbx)
	mov		r11, rax			; move result to 'r11' (i)
	cmp 	r11, 0
	jne		loop_body			; if i != 0, iterate
; -> outside_loop:
	mov		rdi, 0xA			; print newline
	call 	putchar
	ret

magic:
	mov 	rdi, -126
	call 	print_int
	mov		rax, 0
	ret

addition:
	mov 	r10, [rbx + 16]		; 'r10' is first term
	mov		r11, [rbx + 24] 	; 'r11' is second term
	mov		rdi, r10
	push	r10
	push	r11
	call	atoi
	pop		r11
	pop		r10
	mov		r10, rax			; save result from atoi(arg1)
	mov 	rdi, r11
	push	r10
	push	r11
	call	atoi
	pop		r11
	pop		r10
	mov 	r11, rax			; save result from atoi(arg2)
	add		r10, r11			; add the two results
	mov		rdi, r10
	call	print_int			; reuse print_int to convert from ascii nums to integer
	mov		rax, 0
	ret


fact:
	mov		r10, [rbx + 16]		; 'r10' ptr to factorial integer
	mov		r11, [rbx + 24] 	; 'r11'	ptr to string
	mov		rdi, r10
	push	r11
	call	atoi
	pop 	r11
	mov		rdi, rax
	mov		rsi, r11
	call	factorial_message
	mov		rdi, rax
	call 	print_int
	mov		rax, 0
	ret

exit_menu:	
	mov   rdi, help_msg
	call  puts
	mov 	eax, 1
	ret
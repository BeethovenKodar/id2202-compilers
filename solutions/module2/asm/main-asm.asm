%use altreg
        global  main
        extern  puts
		extern  putchar
        extern  fflush


        	section .data

help_msg       	db      "usage: <command> <arg1> <arg2>", 0xA, 0xA  ; line break (0xA)
help_msg2       db      "commands:", 0xA
help_msg3       db      "  e   Echo arguments arg1 and arg2", 0xA
help_msg4       db      "  m   Prints out a magic number", 0xA
help_msg5       db      "  +   Adds together arg1 and arg2", 0xA
help_msg6       db      "  !   Prints out the factorial value of", 0xA
help_msg7       db      "      arg1, as well as the message in arg2", 0xA, 0


; place char in 'dil' reg
; push 	rdi
; call    putchar			;? output validation
; pop 	rdi

			section .text

main:		
	mov     rbp, rdi        	; argc in rdi (64bit). Save in rbp (64bit)
	mov     rbx, rsi        	; argv in rsi (64bit). Save in rbx (64bit)

	cmp		rbp, 0x3			; if rbp < 3 jump to exit label
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
	je	factorial
	
	jmp exit_menu


echo:
	ret


magic:
	ret


addition:
	ret


factorial:
	ret

exit_menu:	
	mov     rdi, help_msg
	call    puts
	xor	    rdi, rdi		; set rdi to 0
	call    fflush
	mov 	eax, 1
	ret
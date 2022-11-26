
        global  main
        extern  puts
        extern  fflush

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
	mov     rbp, rdi        ; argc in rdi (64bit). Save in rbp (64bit)
	mov     rbx, rsi        ; argv in rsi (64bit). Save in rbx (64bit)
	cmp		rbp, 0x3
	jge		right_num_args	; if rbp >= 3 jump to label
    mov     rdi, help_msg
    call    puts
    xor	    rdi, rdi		; set rdi to 0
    call    fflush
	xor 	eax, eax
	inc 	eax
	ret
right_num_args:
	xor	    rdi, rdi
	xor 	eax, eax
	ret
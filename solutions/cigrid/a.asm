	global  main

	section .text

main:
	sub	rsp, 0
	mov	rax, 42
	add	rsp, 0
	ret

	global  main

	section .text

main:
	sub	rsp, 248
	mov	qword [rsp], 5
	mov	qword [rsp + 8], 3
	mov	r10, qword [rsp]
	mov	qword [rsp + 16], r10
	mov	r10, qword [rsp + 8]
	mov	qword [rsp + 24], r10
	mov	r10, qword [rsp + 16]
	add	qword [rsp + 24], r10
	mov	r10, qword [rsp]
	mov	qword [rsp + 32], r10
	mov	qword [rsp + 40], 2
	mov	r10, qword [rsp + 32]
	mov	qword [rsp + 48], r10
	mov	r10, qword [rsp + 40]
	add	qword [rsp + 48], r10
	mov	r10, qword [rsp + 24]
	mov	qword [rsp + 56], r10
	mov	r10, qword [rsp + 48]
	mov	qword [rsp + 64], r10
	mov	r10, qword [rsp + 56]
	add	qword [rsp + 64], r10
	mov	r10, qword [rsp]
	mov	qword [rsp + 72], r10
	mov	r10, qword [rsp + 64]
	mov	qword [rsp + 80], r10
	mov	r10, qword [rsp + 72]
	add	qword [rsp + 80], r10
	mov	r10, qword [rsp + 24]
	mov	qword [rsp + 88], r10
	mov	r10, qword [rsp + 80]
	mov	qword [rsp + 96], r10
	mov	r10, qword [rsp + 88]
	mov	qword [rsp + 104], r10
	mov	r10, qword [rsp + 96]
	add	qword [rsp + 104], r10
	mov	qword [rsp + 112], 5
	mov	r10, qword [rsp + 104]
	mov	qword [rsp + 120], r10
	mov	r10, qword [rsp + 112]
	add	qword [rsp + 120], r10
	mov	r10, qword [rsp]
	mov	qword [rsp + 128], r10
	mov	r10, qword [rsp + 120]
	mov	qword [rsp + 136], r10
	mov	r10, qword [rsp + 128]
	add	qword [rsp + 136], r10
	mov	qword [rsp + 144], 3
	mov	r10, qword [rsp + 136]
	mov	qword [rsp + 152], r10
	mov	r10, qword [rsp + 144]
	mov	qword [rsp + 160], r10
	mov	r10, qword [rsp + 152]
	add	qword [rsp + 160], r10
	mov	qword [rsp + 168], 0
	mov	r10, qword [rsp + 160]
	mov	qword [rsp + 176], r10
	mov	r10, qword [rsp + 168]
	add	qword [rsp + 176], r10
	mov	r10, qword [rsp + 80]
	mov	qword [rsp + 184], r10
	mov	r10, qword [rsp + 176]
	mov	qword [rsp + 192], r10
	mov	r10, qword [rsp + 184]
	add	qword [rsp + 192], r10
	mov	qword [rsp + 200], 0
	mov	r10, qword [rsp + 192]
	mov	qword [rsp + 208], r10
	mov	r10, qword [rsp + 200]
	add	qword [rsp + 208], r10
	mov	r10, qword [rsp + 24]
	mov	qword [rsp + 216], r10
	mov	r10, qword [rsp + 24]
	mov	qword [rsp + 224], r10
	mov	r10, qword [rsp + 216]
	mov	qword [rsp + 232], r10
	mov	r10, qword [rsp + 224]
	add	qword [rsp + 232], r10
	mov	r10, qword [rsp + 208]
	mov	qword [rsp + 240], r10
	mov	r10, qword [rsp + 232]
	add	qword [rsp + 240], r10
	mov	rax, qword [rsp + 240]
	add	rsp, 248
	ret

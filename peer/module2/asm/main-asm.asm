
%macro EXIT 1
    mov     rdi, %1
    mov     rax, 60
    syscall
%endmacro

%macro PUTC 1
    push rdi
    mov rdi, %1
    call putchar
    pop rdi
%endmacro
%macro PUTS 1
    push rdi
    mov     rdi, %1
    call    puts
    pop rdi
%endmacro
%macro FLUSH 0
    push rdi
    mov     rdi, 0
    call    fflush
    pop rdi
%endmacro

        global  main
        extern  puts
        extern  fflush
        extern  putchar
        extern  atoi
        extern  factorial_message
        section .text

menu_str:       db      "usage: <command> <arg1> <arg2>", 10, 10, \
                        "commands:", 10, \
                        "  e   Echo arguments arg1 and arg2", 10, \
                        "  m   Prints out a magic number", 10, \
                        "  +   Adds together arg1 and arg2", 10, \
                        "  !   Prints out the factorial value of", 10, \
                        "      arg1, as well as the message in arg2", 10, 0
        
debug_str:          db      "debugstr",10,0
debug_str_echo:     db      "in_echo",10,0
debug_str_magic:    db      "in_magic",10,0
debug_str_plus:     db      "in plus",10,0
debug_str_fact:     db      "in fact",10,0


echo:
        PUTS    r12
        PUTS    r13
        FLUSH
        EXIT 0

magicn: 
        neg     edi
        PUTC    '-'
magic:  
        cmp     edi, 0          ;rdi = x
        jl      magicn
        mov     rbp, 1000000    ;rbp = i
        mov     rbx, 0          ;rbx = b
        mov     rax, 0
loop:   
        cmp     rbp, 0
        je      lend
if:     
        cmp     rdi, rbp   
        jge     iftrue
        cmp     rbx, 0
        jg      iftrue
        cmp     rdi, 0
        jne     loop_cont
        cmp     rbp, 1
        jne     loop_cont
iftrue: 
        mov     rax, rdi
        xor     rdx, rdx
        div     rbp
        add     rax, '0'
        PUTC    rax
        mov     rbx, 1
loop_cont:
        mov     rax, rdi
        xor     rdx, rdx
        div     rbp
        mov     rdi, rdx
        mov     rax, rbp
        mov     rsi, 10
        xor     rdx, rdx
        div     rsi
        mov     rbp, rax
        jmp     loop 
lend:
        PUTC    10
        FLUSH
        EXIT    0

plus:
        xor     rbp, rbp
        xor     rax, rax
        mov     rdi, r12
        call    atoi
        mov     ebp, eax
        mov     rdi, r13
        call    atoi
        add     eax, ebp
        mov     rdi, rax
        jmp     magic

fact:
        xor     rax, rax
        mov     rdi, r12
        call    atoi
        xor     rdi, rdi
        mov     edi, eax
        mov     rsi, r13
        call    factorial_message
        mov     rdi, rax
        jmp     magic
main:
        push    rbp
        push    rbx
        mov     rbp, 4
        cmp     rdi, rbp
        jl      menu
        mov     rbp, [rsi+8]            ; get pointer to the first argument string
        mov     rbx, [rbp]              ; get commandstring bl is the command string
        mov     r12, [rsi+16]           ; pointer to first argument
        mov     r13, [rsi+24]           ; pointer to second argument
        mov     rdi, -126
        cmp     bl, 0x65        
        je      echo
        
        cmp     bl, 0x6d        
        je      magic
        
        cmp     bl, 0x2b        
        je      plus
        
        cmp     bl, 0x21        
        je      fact
        
        pop     rbp
        pop     rbx

menu:   
        mov     rdi, menu_str       ; Put helpstring as argument to puts
        call    puts                ; Call puts
        mov     rdi, 0             
        call    fflush              ; flush stdout
        EXIT    1
        

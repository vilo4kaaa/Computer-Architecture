;проверяет, сколько единиц в числе
.386
.model flat, stdcall
.stack 4096

.data
n DWORD 12115
repeats DWORD 0
one DWORD 1
ten DWORD 10

ExitProcess proto, dwExitCode:dword

.code
main proc

mov eax, n

BeginWhile:
cmp eax, 0
je EndWhile
cdq
div ten
jmp check

check:
cmp edx, one
je inc_repeats
jmp BeginWhile

inc_repeats:
inc repeats
jmp BeginWhile

EndWhile:

invoke ExitProcess,0

main endp
end main
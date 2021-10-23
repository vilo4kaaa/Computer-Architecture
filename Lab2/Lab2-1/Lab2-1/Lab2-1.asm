;x1 < x2 > x3 > x4

.386
.model flat, stdcall
.stack 4096

.data
x1 SDWORD -17
x2 SDWORD 25
x3 SDWORD 43
x4 SDWORD -4

ExitProcess proto, dwExitCode:sdword

.code
main proc

mov eax, x2
cmp eax, x3
jl swap23
jmp firstIf

swap23:
mov ebx, x3
mov x2, ebx
mov x3, eax

firstIf:
mov eax, x3
cmp eax, x4
jl swap34
jmp secondIf

swap34:
mov ebx, x4
mov x3, ebx
mov x4, eax

secondIf:
mov eax, x1
cmp eax, x2
jg swap12
jmp endOfIf

swap12:
mov ebx, x2
mov x1, ebx
mov x2, eax

endOfIf:

invoke ExitProcess,0

main endp
end main
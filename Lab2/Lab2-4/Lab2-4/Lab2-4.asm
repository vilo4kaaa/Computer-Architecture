;проверяет, сколько единиц в числе
.386
.model flat, stdcall
.stack 4096

.data
n DWORD 122333
k DWORD 2
one_repeats DWORD 0
two_repeats DWORD 0
three_repeats DWORD 0
one DWORD 1
two DWORD 2
three DWORD 3
ten DWORD 10

more BYTE 0

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
je inc_one_repeats

cmp edx, two
je inc_two_repeats

cmp edx, three
je inc_three_repeats


inc_one_repeats:
inc one_repeats
jmp BeginWhile

inc_two_repeats:
inc two_repeats
jmp BeginWhile

inc_three_repeats:
inc three_repeats
jmp BeginWhile

EndWhile:

mov eax, one_repeats
cmp eax, k
jg a

mov eax, two_repeats
cmp eax, k
jg a

mov eax, three_repeats
cmp eax, k
jg a
jmp EndOfIf

a:
mov more, 1
jmp EndOfIf

endOfIf:

invoke ExitProcess,0

main endp
end main
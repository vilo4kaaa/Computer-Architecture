.386
.model flat, stdcall
.stack 4096

.data

x1 DWORD 4
y1 DWORD 7
x2 DWORD 3
y2 DWORD 2

isUnderAttack BYTE 0

ExitProcess proto, dwExitCode:dword

.code
main proc

; eax = |x1-x2|
mov eax, x1
sub eax, x2

; ebx = |y1-y2|
mov ebx, y1
sub ebx, y2

cmp eax, ebx
je a
jmp ElseOne

a:
mov isUnderAttack, 1
jmp EndOfIf

ElseOne:
cmp eax, 0
je b
jmp ElseTwo

b:
mov isUnderAttack, 1

ElseTwo:
cmp ebx, 0
je d
jmp EndOfIf

d: 
mov isUnderAttack, 1
endOfIf:

invoke ExitProcess,0

main endp
end main
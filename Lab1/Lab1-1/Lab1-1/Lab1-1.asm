; y = (b^2-2b)/(3a+b)
.386
.model flat, stdcall
.stack 4096

.data
a DWORD 0
b DWORD 4
y DWORD ?
temp DWORD ?

ExitProcess PROTO, dwExitCode:DWORD

.code
main PROC

mov eax, a
mov ebx, 3
imul ebx
add eax, b
mov temp, eax

mov eax, b
mov ebx, 2
sub eax, ebx
mov ebx, b
imul ebx

idiv temp
mov y, eax

INVOKE ExitProcess,0

main ENDP
END main

.386
.model flat, stdcall
.stack 4096

.data
a byte 0
b byte 0
f byte 0
d byte 0
t byte ?
s byte ?

ExitProcess PROTO, dwExitCode:byte

.code
main PROC

mov al, a
not al
or al, b
or al, f
mov ah, d
not ah
and al, ah
not al
mov t, al

mov al, b
or al, f
not al
and al, a
or al, d
mov s, al

INVOKE ExitProcess,0

main ENDP
END main
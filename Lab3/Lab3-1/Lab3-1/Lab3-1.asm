.386 
.model flat,stdcall 
.stack 4096 

ExitProcess proto,dwExitCode:dword 

.data 
myArray DWORD 9, 4, 0, 3, 5, 10, 30
three dword 3
sum DWORD ? 

.code 
main PROC

mov edi, OFFSET myArray    ;edi = ����� ������ �������      
mov ecx, LENGTHOF myArray  ;�������������� ������� ������� �������   
mov ebx, 0 

L1:                          
    mov edx, 0 
    mov eax, [edi] 
    div three 
    cmp edx, 0 
    jne no                  ;�������, ���� �� �����
 
add ebx, [edi]               
jmp no

no: 
add edi, TYPE myArray       ;������� � ���������� �������� �������
loop L1  
; ������� loop �� ��������� ���������� ECX ��� �������, ������� �������������
; ����������� �� ������� �� ������ ���� ����� � ������������ � �����
 
mov sum, ebx 

invoke ExitProcess,0 

main ENDP 
END main
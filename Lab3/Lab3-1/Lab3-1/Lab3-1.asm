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

mov edi, OFFSET myArray    ;edi = адрес начала массива      
mov ecx, LENGTHOF myArray  ;инициализируем счётчик длинной массива   
mov ebx, 0 

L1:                          
    mov edx, 0 
    mov eax, [edi] 
    div three 
    cmp edx, 0 
    jne no                  ;переход, если не равно
 
add ebx, [edi]               
jmp no

no: 
add edi, TYPE myArray       ;переход к следующему элементу массива
loop L1  
; команда loop по умолчанию использует ECX как счетчик, который автоматически
; уменьшается на единицу на каждом шаге цикла и сравнивается с нулем
 
mov sum, ebx 

invoke ExitProcess,0 

main ENDP 
END main
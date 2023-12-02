;--------------------------------
; Программа вычисления варианта
;--------------------------------
%include 'in_out.asm'
SECTION .data
msg: DB 'Введите число: ',0
rem: DB 'Ответ: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, msg
call sprintLF
mov ecx, x
mov edx, 80
call sread
mov eax,x
call atoi
mov ebx,10
mul ebx
sub eax,5
mov ebx,eax
mul ebx
mov edi,eax
mov eax,rem
call sprintLF
mov eax,edi
call iprintLF
call quit
%include 'in_out.asm'
section .data
msg1 db 'Введите число для значения a: ',0h
msg2 db 'Введите число для значния x: ',0h

section .bss 
A resb 10
X resb 10

section .text
global _start
_start:
; введите a
mov eax,msg1
call sprint
mov ecx,A
mov edx,10
call sread

mov eax,A
call atoi
mov [A],eax
; введите x
mov eax, msg2
call sprint

mov ecx,X
mov edx,10
call sread

mov eax,X
call atoi
mov [X],eax

mov ebx, 4
cmp [X],ebx
jge check 


mov eax,[X]
mov ebx,4
add eax, ebx
call iprintLF

check:
mov eax,[X]
mov ebx,[A]
mul ebx
call iprintLF


call quit 

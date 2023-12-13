%include 'in_out.asm'
section .data
msg1 db 'Введите число для значения x: ',0h
msg2 db 'Введите число для значния a: ',0h

section .bss 
X resb 10
A resb 10

section .text
global _start
_start:
; введите x
mov eax,msg1
call sprint
mov ecx,X
mov edx,10
call sread

mov eax,X
call atoi
mov [X],eax
; введите а
mov eax, msg2
call sprint

mov ecx,A
mov edx,10
call sread

mov eax,A
call atoi
mov [A],eax

mov ebx, 8
cmp [A],ebx
jge check 


mov eax,[A]
mov ebx,8
add eax, ebx
call iprintLF
call quit

check:
mov eax,[A]
mov ebx,[X]
mul ebx
call iprintLF


call quit 



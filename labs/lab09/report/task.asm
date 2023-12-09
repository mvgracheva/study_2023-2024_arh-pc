%include 'in_out.asm'

SECTION .data
func db "функция: 30x-11",0h
msg db 10,13,'результат: ',0h

SECTION .text
global _start

_start:
pop ecx
pop edx
sub ecx, 1
mov esi, 0

next:
cmp ecx,0h
jz _end
pop eax
call atoi

call _calcul

loop next

_end:
mov eax, func
call sprint
mov eax, msg
call sprint
mov eax, esi
call iprintLF

call quit

_calcul:
mov ebx,30
mul ebx
sub eax,11
add esi, eax
ret

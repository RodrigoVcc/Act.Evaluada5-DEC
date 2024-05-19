 section .data
 	;Mensaje
	msg db "Resta de 10-2-3 = "
	len equ $-msg
	msg2 db " ", 0xA
	len2 equ $-msg2
	
	;Inicializa los valores de los 3 numeros a restar
	num1 dw 10
	num2 dw 2
	num3 dw 3
	;se inicializa el resultado en 0
	res dw 0
 segment .bss

 section .text
 	global _start

_start:
   ;Uso de etiquetas
   call resta
   call mostrar
   call fin
   
  resta:
        mov ax, [num1]
        mov bx, [num2]
        mov cx, [num3]
        
        ;Resta
        sub ax, bx
        sub ax, cx
        ;Suma el codigo ASCII del 0 para visualizar el resultado
        add ax,48
        mov [res], ax
     	ret
  mostrar:
  	mov eax, 4
  	mov ebx, 1
  	mov ecx, msg
  	mov edx, len
  	int 80h  
  
  	mov eax, 4
  	mov ebx, 1
  	mov ecx, res
  	mov edx, 1
  	int 80h
  	
  	;salto de linea
  	mov eax, 4
  	mov ebx, 1
  	mov ecx, msg2
  	mov edx, len2
  	int 80h
  	
  	ret
  fin:
  	mov eax, 1
  	mov ebx, 0
  	int 80h

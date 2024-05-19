section .data
 	;Mensaje
	msg db "Division de 10/2 = "
	len equ $-msg
	msg2 db " ", 0xA
	len2 equ $-msg2
	
	;Inicializa los valores de los 2 numeros a dividir
	num1 db 10
	num2 db 2

	;se inicializa el resultado en 0
	res db 0
 segment .bss

 section .text
 	global _start

_start:
   ;Uso de etiquetas
   call division
   call mostrar
   call fin
   
  division:
  	;Division
        mov bl, [num2]
        
        mov ah, 0
        mov al, [num1]
        ;Junta el valor de al con ah y lo divide entre bl
        div bl

        ;Suma el codigo ASCII del 0 para visualizar el resultado
        add al, 48
        mov [res], al

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

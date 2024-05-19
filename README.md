# Act.Evaluada5-DEC
Aqui se encuentran los archivos .asm de los ejercios realzados

En todos los ejercicios se les suma 46, el cual es el codigo ascii del numero 0, a cada resultado para que sea visible en la terminal.

En el ejericio 1 de la resta se utiliza la instrucción aritmetica sub el cual se le usa agregando el valor guardado en ax y se le resta el valor en bx para la primera resta y se guarda en ax
en la segunda resta se hace los mismo, ahora se le resta el valor que esta guardado en cx a ax y se guarda en ax

En el ejercicio 2 se realiza una multiplicacion y para ello se usa la instruccion mul en la cual solo se escribe ah y esta instruccion multiplica ah con el valor que se encuentra en al

En el ejercicio 3 es similar al de la multiplicacion, se utiliza la instruccion div y se agrega el numero que se va a dividir en el caso del ejercicio es ebx pero antes es necesario mover el valor 0 a edx en el cual se aloja el residuo y en eax se aloja el el numero por el cual se va a dividir, una vez hecho eso se escribe div ebx para que se realice la division, el resultado se guardará en eax.

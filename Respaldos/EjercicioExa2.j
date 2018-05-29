;Encontrar todos los numreos del 1 al 100 qie cumplan las siguientes condiciones
;a) imprimir los numeros que sean multiplos de 3 y de 2 al mismo timepo
;b) obtener la suma de los mismos
.class EjercicioExa
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 10

ldc 1  ;Cargar 1
istore_1  ; guardar el 1, Contador
ldc 100
istore_2 ;Final
ldc 0  
istore_3 ;Para almacenar la suma de pares
ldc 0
istore_4 ;Para almacenar la suma de multiplos de 5

miciclo:
	iload_1 ; Carga el 1 que esta en istore_1

estres:
	iconst_3 ;Cargamos el 3
	irem ;Deja en el tope de la pila el reto de la division
	ifreq imprimir ;Compara con 0
	goto espar
	
imprimir:
	getstatic java/lang/System/out Ljava/io/PrintStream;
	iload_1
	invokevirtual java/io/PrintStream/println(I)V

espar:
	iload_1
	iconst_2
	irem
	ifeq sumarpares
	goto sumacinco
	
sumarpares:
	iload_1
	iload_3 ;Cargar para la suma
	iadd ; se indica la  suma
	istore_3 ;Ya se guarda la suma
	
escinco:
	iload_1
	icons_2
	iremifeq sumarcinco
	goto incrementar
	
sumarcinco:
	iload_1
	iload 4 ;Cargar para la suma
	iadd ; se indica la  suma
	istore 4 ;Ya se guarda la suma
	
incrementar:	
	iinc 1 1 ;Incrementa el contador en 1
	iload_1
	iload_2
	if_icmple miciclo
	goto terminar

terminar:
	getstatic java/lang/System/out Ljava/io/PrintStream;
	iload_3
	invokevirtual java/io/PrintStream/println(I)V
	
	getstatic java/lang/System/out Ljava/io/PrintStream;
	iload 4
	invokevirtual java/io/PrintStream/println(I)V
	
	return
	
.end method
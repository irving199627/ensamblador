.class ulam
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 8
.limit locals 8
	
	iconst_0 ; ldc 0
	istore_1 ; mi contador

	ldc 26
	istore_2 ;segunda variable almacenando el valor 26

CicloSerie:
	; Ya termino de llegar al numero 1
	iload_2
	iconst_1
	if_icmpeq terminar

seguir:
	iload_2
	iconst_2
	irem ; obtengo el residuo de una division (modulo)
	iconst_0 ;cargo un cero en el tope de la pila para poder comparar con el residuo
	if_icmpeq esPar ;en caso de ser iguales la comparacion salta a la etiqueta indicada

esImpar:
	iload_2
	iconst_3
	imul
	iconst_1
	iadd
	istore_2 ; guardo en el tope de la pila, reemplazo el valor que habia en istore_2
	goto finCaso

esPar:
	iload_2
	iconst_2
	idiv
	istore_2
	goto finCaso

finCaso:
	iload_1
	iconst_1 ; aumento mi contador
	iadd
	istore_1 ; Actualiza mi contador de memoria
	; iload_1
	; jsr PrintEntero
	iload_2
	jsr PrintEntero
	goto CicloSerie

terminar:
	return

PrintEntero:
	astore 5
	getstatic java/lang/System/out Ljava/io/PrintStream;
	swap
	invokevirtual java/io/PrintStream/println(I)V
	ret 5




.end method

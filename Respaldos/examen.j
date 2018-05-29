.class examen
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 6
.limit locals 6
	; En este programa se puede ingrersar cualquier numero (de 2 digitos 0-99), y se imprimirá en consola un numero por linea
	;Ejemplo: numero ingresado 45
	;Impresion en consola:
	;4
	;5

	ldc 67 ; ingresar el numero a imprimir en 2 digitos
	istore_1
	ldc 10 ; mi contador de decenas
	istore_2
	ldc 0 ; almacena el primer numero
	istore_3
	ldc 0 ; almacena el segundo numero
	istore 4

dig1:
	iload_1
	iload_2
	idiv
	istore_3
	iload_3
	jsr imprimir
	goto dig2

dig2:
	iload_1
	iload_2
	irem
	istore 4
	iload 4
	jsr imprimir



	return

imprimir:
	astore 5
	getstatic java/lang/System/out Ljava/io/PrintStream;
	swap
	invokevirtual java/io/PrintStream/println(I)V
	ret 5
.end method
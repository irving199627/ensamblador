.class public tribonacci ;0,1,1,2,3,5,8....N
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 8
.limit locals 8
	ldc 0 ;cargamos el 0
	istore_1 ;guardamos el bajo
	ldc 1
	istore_2 ;primer alto
	ldc 2
	istore_3 ;segundo alto
	ldc 21 ;ultimo termino para terminar el  programa(mayor o igual a N)
	istore 5

	iload_1
	jsr imprimir
	iload_2
	jsr imprimir
	iload_3
	jsr imprimir

	ciclo:

		;condicion de terminacion
		iload_3
		iload 5
		if_icmpge terminar



		iload_1
		iload_2
		iload_3
		iadd
		iadd
		istore 4 ;siguiente alto
		iload 4
		jsr imprimir

		;Reorganizar las variables
		;bajo = primer alto anterior
		;alto2= segundo alto anterior
		;alto = siguiente alto

		iload_2
		istore_1
		iload_3
		istore_2
		iload 4
		istore_3

	goto ciclo

	terminar:
		return

	imprimir:
		astore 6
		getstatic java/lang/System/out Ljava/io/PrintStream;
		swap
		invokevirtual java/io/PrintStream/println(I)V
		ret 6


.end method
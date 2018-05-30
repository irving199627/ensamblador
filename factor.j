;obtenga la suma de los factores primos de un numero, 
;por ejemplo N=15 
;suma = 3+5=8 
;el programa debe tener un ciclo

.class public factor
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 9
.limit locals 9
	ldc 15 ;numero para obtener factor primo
	istore_1
	ldc 2 ;numero auxiliar X
	istore_2
	ldc 0 ;resultado de la suma
	istore_3

	ciclo:
		iload_1
		ldc 1
		if_icmpeq fin

		decision:
			iload_1
			iload_2
			irem
			ldc 0
			if_icmpeq seguir

		sino:
			iload_2
			ldc 1
			iadd
			istore_2
			goto regresar

		seguir:
			iload_2
			jsr imprimir
			iload_2
			iload_3
			iadd
			istore_3
			iload_1
			iload_2
			idiv
			istore_1
	
	regresar:
			goto ciclo

	fin:
		iload_3
		jsr imprimir
		return

	imprimir:
		astore 4
		getstatic java/lang/System/out Ljava/io/PrintStream;
		swap
		invokevirtual java/io/PrintStream/println(I)V
		ret 4
.end method
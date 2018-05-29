.class public DigExa
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 6
.limit locals 6
	
	ldc 123456
	istore_1

	ciclo:
		;condicion para finalizar el programa
		iload_1
		ldc 0
		if_icmpeq terminar

		iload_1
		ldc 10
		irem
		jsr imprimir

		iload_1
		ldc 10
		idiv
		istore_1
		goto ciclo

		terminar:
			return

	imprimir:
	astore_3
	getstatic java/lang/System/out Ljava/io/PrintStream;
	swap
	invokevirtual java/io/PrintStream/println(I)V
	ret 3
.end method
.class Factor
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 15
.limit locals 15

	ldc 32 ;Se ingresa un numero (n)
	istore_0 ;Se almacena 

	ldc 2 ;Se ingresa el divisor
	istore_1 
	
	ciclo: ;ciclo para calcular el modulo
		iload_0 ;se carga el numero
		iload_1 ;secarga el divisor
		irem ; se efctua la operacion
		ifeq mod ;sentencia if para determinar si el modulo es 0 o 1
		goto nomod ;el else del if
		
	mod:  ;en caso de que tenga modulo 1
		iload_1 
		jsr imprimir
		iload_0
		iload_1
		idiv
		istore_0
		goto verificar
		
	nomod: ;en caso de que tenga modulo 0
		iinc 1 1
		goto verificar
	
	verificar:
		iload_0
		ldc 1
		if_icmpeq fin
		goto ciclo
		
		
		
	imprimir:
		astore 5
		getstatic java/lang/System/out Ljava/io/PrintStream;
		swap
		invokevirtual java/io/PrintStream/println(I)V
		ret 5
		
	fin:
		return
.end method
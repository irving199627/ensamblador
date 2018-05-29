.class CalculaFactorial
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 15
.limit locals 15
	
	ldc 4
	istore_0 ;para el numero
	ldc 1
	istore_1 ;contador
	ldc 1
	istore_2 ;auxiliar para multiplicar
	ldc 1
	istore_3 ;inicio ciclo
	
ciclo:
	iload_0
	iload_3
	if_icmpeq finalciclo
	goto factorial

incrementarciclo:
	iinc 3 1
	goto ciclo
	
factorial:
	iload_1
	iload_2
	imul
	istore_1
	goto verificar

verificar:
	iload_2
	iload_1
	if_icmpeq fin
	goto incrementar
	
incrementar:
	iinc 2 1
	goto factorial

fin:
	getstatic java/lang/System/out Ljava/io/PrintStream;
	iload_1
	invokevirtual java/io/PrintStream/println(I)V
	goto incrementarciclo
	
finalciclo:
	return
.end method
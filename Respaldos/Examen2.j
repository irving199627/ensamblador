.class Examen2
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 10

	iconst_1   
	istore_1                 ;factorial
	iconst_1
	istore_2                 ; C
	
	iconst_1
	istore_3                 ; contador
	
	iconst_1
	istore 4

	
	
	
ciclo:
	iload_3
	iconst_3
	if_icmple factorial
	goto fin
	
factorial:
	iload_2
	iload_3
	if_icmple operaciones
	iload_1
	jsr Imprime
	iload_1
	iload 4
	iadd
	istore 4
	iinc 3 1
	goto ciclo
	

	
fin:
	iload 4
	iconst_1
	isub
	jsr Imprime
	return
	
operaciones:
	iload_1
	iload_2
	imul
	istore_1
	
	iload_2
	iconst_1
	iadd
	istore_2
	goto factorial

Imprime:
	astore 5
	getstatic java/lang/System/out Ljava/io/PrintStream;
	swap
	invokevirtual java/io/PrintStream/println(I)V
	ret 5


.end method
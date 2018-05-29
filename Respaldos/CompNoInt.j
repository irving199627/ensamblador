.class CompNoInt ;comparar 2 numeros entreos
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 8
.limit locals 10

	ldc2_w 10 ;cargar doble palabra
	lstore_1
	ldc2_w 100
	lstore_3

	lload_3 ;en la apila 10
	lload_1 ;        100
	lcmp

	ifgt funciono

nanais:
	getstatic java/lang/System/out Ljava/io/PrintStream;
	lload_1
	invokevirtual java/io/PrintStream/println(J)V

funciono:
	getstatic java/lang/System/out Ljava/io/PrintStream;
	lload_3
	invokevirtual java/io/PrintStream/println(J)V
fin:
	return
.end method
.class public MAIN
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 10

	new RomboRaro
	dup
	ldc 12.0
	ldc 6.0
	invokespecial RomboRaro/<init>(FF)V
	astore_1
	aload_1
	invokevirtual RomboRaro/area()F
	getstatic java/lang/System/out Ljava/io/PrintStream;
	swap
	invokevirtual java/io/PrintStream/println(F)V


	new TrianguloRecRaro
	dup
	ldc 12.0
	ldc 6.0
	invokespecial TrianguloRecRaro/<init>(FF)V
	astore_2
	aload_2
	invokevirtual TrianguloRecRaro/area()F
	getstatic java/lang/System/out Ljava/io/PrintStream;
	swap
	invokevirtual java/io/PrintStream/println(F)V
	return
.end method 
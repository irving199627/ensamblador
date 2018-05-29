.class public TestMiCirculo
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 10

new MiCirculo
	dup
	invokespecial MiCirculo/<init>()V
	astore_1
	aload_1
	ldc 2.0
	invokevirtual MiCirculo/setRadio(F)V
	
	new MiCirculo
	dup
	ldc 4.0
	invokespecial MiCirculo/<init>(F)V
	astore_2
	
	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload_1
	invokevirtual MiCirculo/area()F
	invokevirtual java/io/PrintStream/println(F)V
	
	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload_2
	invokevirtual MiCirculo/area()F
	invokevirtual java/io/PrintStream/println(F)V
	
	return
.end method
.class public Test
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 9
.limit locals 9	
	
	new Rectangulo
	invokespecial Rectangulo/<init>()V
	astore_1
	aload_1
	ldc 6.0
	invokevirtual Rectangulo/setBase(F)V
	ldc 4.0
	invokevirtual Rectangulo/setAltura(F)V
	
	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload_1
	invokevirtual Rectangulo/area()F
	invokevirtual java/io/PrintStream/println(F)V
		
	return
.end method
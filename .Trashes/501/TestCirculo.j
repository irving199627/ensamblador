.class public TestCirculo
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 10	
	
	new Circulo
	dup
	invokespecial Circulo/<init>()V
	astore_1
	aload_1
	ldc 2.0
	invokevirtual Circulo/setRadio(F)V
	
	new Circulo
	dup
	ldc 4.0
	invokespecial Circulo/<init>(F)V
	astore_2
	
	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload_1
	invokevirtual Circulo/area()F
	invokevirtual java/io/PrintStream/println(F)V
	
	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload_2
	invokevirtual Circulo/area()F
	invokevirtual java/io/PrintStream/println(F)V
	
	new Esfera
	dup
	invokespecial Esfera/<init>()V
	astore_3
	aload_3
	ldc 4.0
	invokevirtual Esfera/setRadio(F)V
	
	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload_3
	invokevirtual Esfera/area()F
	invokevirtual java/io/PrintStream/println(F)V
	
	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload_3
	invokevirtual Esfera/volumen()F
	invokevirtual java/io/PrintStream/println(F)V
	
	new EsferaHueca
	dup
	ldc 4.0
	ldc 2.0
	invokespecial EsferaHueca/<init>(FF)V
	astore 4
	
	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload 4
	invokevirtual EsferaHueca/area()F
	invokevirtual java/io/PrintStream/println(F)V
	
	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload 4
	invokevirtual EsferaHueca/volumen()F
	invokevirtual java/io/PrintStream/println(F)V
	
	return
.end method
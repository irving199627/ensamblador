.class public HolaMetodo
.super java/lang/Object

.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method

.method public hola()V
.limit stack 4
.limit locals 4
	aload_0
	getstatic java/lang/System/out Ljava/io/PrintStream;
	ldc "Hola...Mundo...por...Metodo !!!"
	invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
	return
.end method


.method public static main([Ljava/lang/String;)V
     	.limit stack 10   
	.limit locals 5

	new HolaMetodo
	dup
	invokespecial HolaMetodo/<init>()V
	invokevirtual HolaMetodo/hola()V
       

       return
    .end method
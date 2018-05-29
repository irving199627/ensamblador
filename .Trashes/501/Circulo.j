.class public Circulo
.super java/lang/Object
.field protected radio F

.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
	return
.end method

.method public <init>(F)V
.limit stack 2
.limit locals 2	
	aload_0
	invokespecial java/lang/Object/<init>()V
	aload_0
	fload_1
	putfield Circulo/radio F
	return
.end method


.method setRadio(F)V
.limit stack 4
.limit locals 4
	aload_0
	fload_1
	putfield Circulo/radio F
	return	
.end method

.method area()F
.limit stack 4
.limit locals 4
	aload_0
	getfield Circulo/radio F 
	dup
	fmul
	ldc 3.14
	fmul
	freturn
.end method

.method diametro()F
.limit stack 4
.limit locals 4
	aload_0
	getfield Circulo/radio F
	ldc 2.0
	fmul
	freturn
.end method

.method perimetro
.limit stack 4
.limit locals 4
	aload_0
	invokevirtual Circulo/diametro()F
	ldc 3.1416
	fmul
	freturn
.end method


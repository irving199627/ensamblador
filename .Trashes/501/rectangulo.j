.class public rectangulo
.super java/lang/Object 
.field base F
.field altura F

.method public <init>(FF)V
.limit stack 5
.limit locals 5
	aload_0
	invokespecial java/lang/Object/<init>()V
	aload_0
	fload_1
	putfield rectangulo/base F
	aload_0
	fload_2
	putfield rectangulo/altura F
	return
.end method

.method public area()F
.limit stack 5
.limit locals 5
	aload_0
	getfield rectangulo/base F
	aload_0
	getfield rectangulo/altura F
	fmul
	freturn
.end method

.method public perimetro()F
.limit stack 5
.limit locals 5
	aload_0
	getfield rectangulo/base F
	dup
	fadd
	aload_0
	getfield rectangulo/altura F
	dup
	fadd
	fadd
	freturn
.end method
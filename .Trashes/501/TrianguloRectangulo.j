.class public TrianguloRectangulo
.super Rectangulo

.method public <init>()V
	aload_0
	invokespecial Rectangulo/<init>()V
	return
.end method

.method public <init>(FF)V
.limit stack 5
.limit locals 5
	aload_0
	invokespecial Rectangulo/<init>()V
	aload_0
	fload_1
	putfield TrianguloRectangulo/base F
	aload_1
	fload_2
	putfield TrianguloRectangulo/altura F
	return
.end method

.method area()F
.limit stack 5
.limit locals 5
	aload_0
	invokespecial Rectangulo/area()F
	ldc 2.0
	fdiv
	freturn
.end method


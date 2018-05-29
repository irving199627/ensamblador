.class public Esfera
.super Circulo

.method public <init>()V
	aload_0
	invokespecial Circulo/<init>()V
	return
.end method

.method public <init>(F)V
.limit stack 2
.limit locals 2	
	aload_0
	invokespecial Circulo/<init>()V
	aload_0
	fload_1
	putfield Esfera/radio F
	return
.end method

.method area()F
.limit stack 4
.limit locals 4
	aload_0
	invokespecial Circulo/area()F
	ldc 4.0
	fmul
	freturn
.end method

.method volumen()F
.limit stack 4
.limit locals 4
	aload_0
	invokespecial Esfera/area()F
	aload_0 
	getfield Esfera/radio F
	fmul
	;ldc 4.0
	;fmul
	ldc 3.0
	fdiv
	freturn
.end method
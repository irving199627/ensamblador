.class public EsferaHueca
.super Esfera
.field protected radioInterno F

.method public <init>()V
	aload_0
	invokespecial Esfera/<init>()V
	return
.end method

.method public <init>(FF)V
.limit stack 4
.limit locals 4	
	aload_0
	invokespecial Esfera/<init>()V
	aload_0
	fload_1
	putfield EsferaHueca/radio F
	aload_0
	fload_2
	putfield EsferaHueca/radioInterno F
	return
.end method

.method area()F
.limit stack 4
.limit locals 4	
	aload_0
	invokespecial Esfera/area()F
	new Esfera
	dup
	aload_0
	getfield EsferaHueca/radioInterno F
	invokespecial Esfera/<init>(F)V
	invokevirtual Esfera/area()F
	fadd
	freturn
.end method

.method volumen()F
.limit stack 4
.limit locals 4	
	aload_0
	invokespecial Esfera/volumen()F
	new Esfera
	dup
	aload_0
	getfield EsferaHueca/radioInterno F
	invokespecial Esfera/<init>(F)V
	invokevirtual Esfera/volumen()F
	fsub
	freturn
.end method
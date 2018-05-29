.class public TrianguloRec2
.super java/lang/Object
.field protected base F
.field protected altura F 

.method public <init>(FF)V
.limit stack 6
.limit locals 6
	aload_0;cargamos referenciz
	invokespecial java/lang/Object/<init>()V
	aload_0
	fload_1 ;cargamos el primer numero 3 en la pila
	putfield TrianguloRec2/base F ;lo mueve al objeto
	aload_0 ;cargamos referencia
	fload_2 ;cargamos el segundo numero 4 en la pila
	putfield TrianguloRec2/altura F ;lo mueve al objeto
	return
.end method

.method public hipotenusa()F
.limit stack 6
.limit locals 6
	aload_0
	getfield TrianguloRec2/base F ;solicita el alto que esta en el objeto para ponerlo en la pila
	dup
	fmul
	aload_0
	getfield TrianguloRec2/altura F ;solicita el alto
	dup
	fmul
	fadd
	f2d
	invokestatic java/lang/Math/sqrt(D)D
	d2f

	freturn
.end method

.method public perimetro()F
.limit stack 6
.limit locals 6
	aload_0
	getfield TrianguloRec2/base F
	aload_0
	getfield TrianguloRec2/altura F
	fadd
	aload_0
	invokespecial TrianguloRec2/hipotenusa()F
	fadd
	freturn
.end method
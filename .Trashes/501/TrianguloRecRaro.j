.class public TrianguloRecRaro
.super RomboRaro ;hereda del RomboRaro

.method public <init>(FF)V
.limit locals 5
.limit stack 5
	aload_0
	fload_1 ;cargo diagonanal mayor
	fload_2 ;cargo diagonal menor
	invokespecial RomboRaro/<init>(FF)V ;llamo al constructor del ancestro
	return
.end method

;metodo para obtener el cateto1
.method public catetoMayor()F
.limit locals 5
.limit stack 5
	aload_0
	getfield TrianguloRecRaro/diagonalMayor F
	ldc 2.0
	fdiv
	freturn
.end method

;metodo para obtener el cateto2
.method public catetoMenor()F
.limit locals 5
.limit stack 5
	aload_0
	getfield TrianguloRecRaro/diagonalMenor F
	ldc 2.0
	fdiv
	freturn
.end method

.method public area()F
.limit locals 5
.limit stack 5
	aload_0
	invokevirtual TrianguloRecRaro/catetoMayor()F ;llamar el metodo del cateto1
	aload_0
	invokevirtual TrianguloRecRaro/catetoMenor()F
	fmul
	ldc 2.0
	fdiv
	freturn
.end method

;metodo para sacar la hipotenusa
.method public hipotenusa()F
.limit locals 5
.limit stack 5
	aload_0
	invokevirtual TrianguloRecRaro/catetoMayor()F ;dame tu cateto
	dup
	fmul
	aload_0
	invokevirtual TrianguloRecRaro/catetoMenor()F ;dame tu cateto
	dup
	fmul
	fadd
	f2d 
	invokestatic java/lang/Math/sqrt(D)D
	d2f
	freturn
.end method
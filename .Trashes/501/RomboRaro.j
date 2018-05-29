.class public RomboRaro
.super java/lang/Object
.field diagonalMayor F
.field diagonalMenor F

.method public <init>(FF)V
.limit locals 5
.limit stack 5
	aload_0 ;direccionar
	invokespecial java/lang/Object/<init>()V ;Llamar al constructor por default
	aload_0 ;direccionar otra vez
	fload_1 ;cargar el primer flotante
	putfield RomboRaro/diagonalMayor F ;cargar diagonal mayor
	aload_0 ;direccionar
	fload_2 ;para cargar el 2
	putfield RomboRaro/diagonalMenor F ;cargar diagonal menor 
	return
.end method

;metodo para obtener el area
.method public area()F
.limit locals 5
.limit stack 5
	aload_0 ;redireccionar
	getfield RomboRaro/diagonalMayor F ;Llamar el diagonal mayor
	aload_0
	getfield RomboRaro/diagonalMenor F
	fmul
	ldc 2.0
	fdiv
	freturn
.end method

;metodo para obtener el perimetro
.method public perimetro()F
.limit locals 5
.limit stack 5
	aload_0
	getfield RomboRaro/diagonalMayor F
	ldc 2.0
	fdiv
	dup
	fmul
	aload_0
	getfield RomboRaro/diagonalMenor F
	ldc 2.0
	fdiv
	dup
	fmul
	fadd
	f2d
	invokestatic java/lang/Math/sqrt(D)D
	d2f
	ldc 4.0
	fmul
	freturn
.end method
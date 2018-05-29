.class public MiTriangulo
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
	.limit stack 8
	.limit locals 8

	ldc 3.0
	dup
	fmul
	ldc 4.0
	dup
	fmul
	fadd
	f2d
	invokestatic java/lang/Math/sqrt(D)D
	d2f

	getstatic java/lang/System/out Ljava/io/PrintStream;
	swap
	invokevirtual java/io/PrintStream/println(F)V

	ldc 3.0
	dup
	fmul
	ldc 3.0
	dup
	fmul
	fadd
	f2d
	invokestatic java/lang/Math/sqrt(D)D
	d2f

	getstatic java/lang/System/out Ljava/io/PrintStream;
	swap
	invokevirtual java/io/PrintStream/println(F)V

	return
.end method

; se calcula la hipotenuza
.class TestTriangulo
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 6
.limit locals 6

new TrianguloRec2 ;prepara la pila
    dup 
	ldc 3.0 ;pone el 3 en la pila
	ldc 4.0 ;pone el 4 en la pila
    invokespecial TrianguloRec2/<init>(FF)V
	invokevirtual TrianguloRec2/hipotenusa()F
	getstatic java/lang/System/out Ljava/io/PrintStream;
	swap
	invokevirtual java/io/PrintStream/println(F)V

new TrianguloRec2
    dup
	ldc 3.0
	ldc 4.0
    invokespecial TrianguloRec2/<init>(FF)V
	invokevirtual TrianguloRec2/perimetro()F
	getstatic java/lang/System/out Ljava/io/PrintStream;
	swap
	invokevirtual java/io/PrintStream/println(F)V



return
.end method
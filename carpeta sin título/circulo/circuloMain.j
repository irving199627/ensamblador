.class public circuloMain
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
  .limit stack 6
  .limit locals 6

  new circulo
  dup
  ldc 5.0

  invokespecial circulo/<init>(F)V
  invokevirtual circulo/area()F

  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(F)V

  new circulo
  dup
  ldc 5.0

  invokespecial circulo/<init>(F)V
  invokevirtual circulo/perimetro()F

  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(F)V

  new esfera
  dup
  ldc 5.0

  invokespecial esfera/<init>(F)V
  invokevirtual esfera/area()F

  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(F)V

  return
.end method

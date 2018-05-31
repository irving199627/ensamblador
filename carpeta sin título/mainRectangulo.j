.class public mainRectangulo
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
  .limit stack 8
  .limit locals 8

  new rectangulo
  dup
  ldc 4.0
  ldc 3.0

  invokespecial rectangulo/<init>(FF)V
  invokevirtual rectangulo/area()F

  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(F)V

  new rectangulo
  dup
  ldc 4.0
  ldc 3.0

  invokespecial rectangulo/<init>(FF)V
  invokevirtual rectangulo/perimetro()F

  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(F)V
  return
.end method

.class public mainTriangulo
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
  .limit stack 8
  .limit locals 8

  new triangulo
  dup
  ldc 4.0
  ldc 3.0

  invokespecial triangulo/<init>(FF)V
  invokevirtual triangulo/area()F

  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(F)V

  new triangulo
  dup
  ldc 4.0
  ldc 3.0

  invokespecial triangulo/<init>(FF)V
  invokevirtual triangulo/hipotenusa()F

  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(F)V

  new triangulo
  dup
  ldc 4.0
  ldc 3.0

  invokespecial triangulo/<init>(FF)V
  invokevirtual triangulo/perimetro()F

  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(F)V
  return
.end method

.class public MainRectangulo
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
  .limit locals 6
  .limit stack 6

  new Trapecio
  dup
  ldc 3.0
  ldc 4.0

  invokespecial Trapecio/<init>(FF)V
  invokevirtual Trapecio/area()F

  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(F)V

  return
.end method

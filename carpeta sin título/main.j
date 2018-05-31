.class public main
.super java/lang/Object

.method public static main([Ljava/lang/String;)V

  .limit stack 8
  .limit locals 8

  new cuadrado ;creamos instancia de la clase
  dup
  ldc 4.0 ;el valor del lado que se utiliza en la clase cuadrado
  ldc 4.0
  invokespecial cuadrado/<init>(FF)V ;inicializar la clase cuadrado
  invokevirtual cuadrado/area()F

  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(F)V

  new cuadrado
  dup
  ldc 5.0
  ldc 5.0
  invokespecial cuadrado/<init>(FF)V ;inicializar la clase cuadrado
  invokevirtual cuadrado/perimetro()F

  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(F)V

  new cubo
  dup
  ldc 4.0
  ldc 4.0

  invokespecial cubo/<init>(FF)V ;inicio la clase del cubo
  invokevirtual cubo/area()F ;ya esta inicializado y estoy dentro de la clase

  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(F)V
  return
.end method

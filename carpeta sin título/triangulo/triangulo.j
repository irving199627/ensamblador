.class public triangulo
.super java/lang/Object

.field protected base F
.field protected altura F

.method public <init>(FF)V
  .limit stack 8
  .limit locals 8

  aload_0 ;referencia
  invokespecial java/lang/Object/<init>()V ;constructor por defecto

  aload_0 ;referencia
  fload_1 ;base
  putfield triangulo/base F

  aload_0
  fload_2
  putfield triangulo/altura F

  return
.end method

.method public area()F
  .limit stack 8
  .limit locals 8

  aload_0
  getfield triangulo/base F

  aload_0
  getfield triangulo/altura F

  fmul
  ldc 2.0
  fdiv
  freturn
.end method

.method public hipotenusa()F
  .limit locals 6
  .limit stack 6

  aload_0
  getfield triangulo/base F
  dup
  fmul

  aload_0
  getfield triangulo/altura F
  dup
  fmul

  fadd

  f2d
  invokestatic java/lang/Math/sqrt(D)D
  d2f

  freturn
.end method

.method public perimetro()F
  .limit locals 6
  .limit stack 6

  aload_0
  getfield triangulo/base F

  aload_0
  getfield triangulo/altura F

  fadd

  aload_0
  invokespecial triangulo/hipotenusa()F

  fadd
  freturn

.end method

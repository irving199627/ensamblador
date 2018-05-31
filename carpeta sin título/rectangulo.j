.class public rectangulo
.super java/lang/Object

.field protected base F
.field protected altura F

.method public <init>(FF)V
  .limit stack 6
  .limit locals 6

  aload_0
  invokespecial java/lang/Object/<init>()V

  aload_0
  fload_1
  putfield rectangulo/base F

  aload_0
  fload_2
  putfield rectangulo/altura F

  return
.end method

.method public area()F
  .limit stack 6
  .limit locals 6

  aload_0 ;referencia
  getfield rectangulo/base F

  aload_0
  getfield rectangulo/altura F

  fmul
  freturn

.end method

.method public perimetro()F
  .limit stack 6
  .limit locals 6

  aload_0
  getfield rectangulo/base F
  ldc 2.0
  fmul

  aload_0
  getfield rectangulo/altura F
  dup
  fadd

  fadd

  freturn
.end method

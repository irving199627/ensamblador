.class public Rectangulo
.super java/lang/Object

.field protected base F
.field protected altura F

.method public <init>(FF)V
  .limit locals 6
  .limit stack 6

  aload_0
  invokespecial java/lang/Object/<init>()V

  aload_0
  fload_1
  putfield Rectangulo/base F

  aload_0
  fload_2
  putfield Rectangulo/altura F

  return

.end method

.method public area()F
  .limit stack 6
  .limit stack 6

  aload_0
  getfield Rectangulo/base F

  aload_0
  getfield Rectangulo/altura F

  fmul
  freturn

.end method

.method public diagonal()F
  .limit locals 6
  .limit stack 6

  aload_0
  getfield Rectangulo/base F
  dup
  fmul

  aload_0
  getfield Rectangulo/altura F
  dup
  fmul

  fadd

  f2d
  invokestatic java/lang/Math/sqrt(D)D
  d2f

  freturn
.end method

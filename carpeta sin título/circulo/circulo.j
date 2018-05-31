.class public circulo
.super java/lang/Object

.field protected radio F

.method public <init>(F)V
  .limit stack 6
  .limit locals 6

  aload_0 ;hacemos referencia
  invokespecial java/lang/Object/<init>()V

  aload_0
  fload_1 ;radio
  putfield circulo/radio F

  return
.end method

.method public area()F
  .limit locals 6
  .limit stack 6

  aload_0
  getfield circulo/radio F
  dup
  fmul

  ldc 3.14
  fmul
  freturn
.end method

.method public perimetro()F
  .limit locals 6
  .limit stack 6

  ldc 3.14
  ldc 2.0
  fmul

  aload_0
  getfield circulo/radio F
  fmul

  freturn
.end method

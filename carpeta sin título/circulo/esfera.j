.class public esfera
.super circulo

.method public <init>(F)V
  .limit stack 6
  .limit locals 6

  aload_0
  fload_1 ;se llama el radio

  invokespecial circulo/<init>(F)V ;llamamos la clase circulo
  return
.end method

.method public area()F
  .limit locals 6
  .limit stack 6

  aload_0 ;referencia
  invokespecial circulo/area()F ;llamamos el area del circulo
  ldc 4.0
  fmul
  freturn

.end method

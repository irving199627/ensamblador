.class public cubo
.super cuadrado

.method public <init>(FF)V
  .limit stack 8
  .limit locals 8
  ;solo se carga
  aload_0 ;lado clase cuadrado
  fload_1 ;se llaman cada uno lado
  fload_2 ; altura

  invokespecial cuadrado/<init>(FF)V
  return

.end method

.method public area()F
  .limit stack 8
  .limit locals 8

  aload_0 ;referenciamos
  invokespecial cuadrado/area()F  ;para llamar metodos de otras clases siempre que esté heredado
  ldc 6.0
  fmul
  freturn

.end method

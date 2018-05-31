.class public Trapecio
.super Rectangulo

.method public <init>(FF)V
  .limit locals 6
  .limit stack 6

  aload_0
  fload_1
  fload_2

  invokespecial Rectangulo/<init>(FF)V
  return
.end method

.method public area()F
  .limit locals 6
  .limit stack 6

  aload_0
  getfield Rectangulo/base F

  ldc 12.0
  fadd
  ldc 2.0
  fdiv

  aload_0
  getfield Rectangulo/altura F

  fmul
  freturn
.end method

.class public cuadrado
.super java/lang/Object

.field protected lado F ;proteger el lado que se va a heredar
.field protected altura F

.method public <init>(FF)V ;se pone una F porque solo se utiliza un lado
  .limit stack 8
  .limit locals 8

  aload_0 ;cargamos referencia
  invokespecial java/lang/Object/<init>()V ;llamamos el constructor por defecto

  aload_0
  fload_1 ;movemos el lado lo que está en el main, (ldc 4)
  putfield cuadrado/lado F ;carga en el objeto

  aload_0
  fload_2
  putfield cuadrado/altura F

  return
.end method

.method public area()F ;devuelve un flotante
  .limit stack 8
  .limit locals 8

  aload_0 ;referencia
  getfield cuadrado/lado F
  aload_0
  getfield cuadrado/altura F
  fmul ;multimplicado
  freturn

.end method

.method public perimetro()F
  .limit stack 8
  .limit locals 8

    aload_0 ;referenciamos
    getfield cuadrado/lado F
    ldc 4.0
    fmul
    freturn

  .end method

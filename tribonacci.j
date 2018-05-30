.class public tribonacci ; 0,1,2,3,6,11,20,37,88,145...,n
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 8
.limit locals 8
  ldc 0
  istore_1 ; bajo
  ldc 1
  istore_2 ; medio
  ldc 2
  istore_3 ; alto
  ldc 145 ; condicion de terminación, menor o igual a N
  istore 5

  iload_1
  jsr imprimeme
  iload_2
  jsr imprimeme
  iload_3
  jsr imprimeme
ciclo:
    ;checar si ya termino la serie
    iload_3
    iload 5
    if_icmpge terminar ; compara, si es igual salta a terminar

    iload_1
    iload_2
    iload_3
    iadd
    iadd
    istore 4 ;siguiente alto
    iload 4
    jsr imprimeme
    ; reorganizar las variables
    ; bajo = medio
    ; medio = alto
    ; alto = nuevo alto

    iload_2
    istore_1

    iload_3
    istore_2

    iload 4
    istore_3
    goto ciclo
terminar:
  return
imprimeme:
astore 6
getstatic java/lang/System/out Ljava/io/PrintStream;
swap
invokevirtual java/io/PrintStream/println(I)V
ret 6
.end method

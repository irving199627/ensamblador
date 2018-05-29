;examen de lenguajes de interfaz

;hacer un programa en jazmin para favctorizar un numero entero a partir del sig algoritmo
;a) establece d minuscula a "d = 2" (divisor)
;b) calcular el residuon r entre n/d
;c)si r == 0 entonnces imprime d , otro caso remmpleza n n/d de lo contrario reemplaza d por d+1
;d)si n == 1 entonces termina el programa de lo contrario regresar al paso b
;java -jar jasmin.jar file.j
;java file


.class FactorExa
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 15
.limit locals 15

	ldc 100 ;Se ingresa un numero (n)
	istore_0 ;Se almacena 

	ldc 2 ;Se ingresa el divisor
	istore_1 
	
	ciclo: ;ciclo para calcular el modulo
		iload_0 ;se carga el numero
		iload_1 ;secarga el divisor
		irem ; se efctua la operacion
		ifeq mod ;sentencia if para determinar si el modulo es 0 o 1
		goto nomod ;el else del if
		
	mod:  ;en caso de que tenga modulo 1
		iload_1 
		jsr imprimir
		iload_0
		iload_1
		idiv
		istore_0
		goto verificar
		
	nomod: ;en caso de que tenga modulo 0
		iinc 1 1 ;incrementar contador del ciclo
		goto verificar
	
	verificar:
		iload_0
		ldc 1
		if_icmpeq fin
		goto ciclo
		
		
		
	imprimir:
		astore 5
		getstatic java/lang/System/out Ljava/io/PrintStream;
		swap
		invokevirtual java/io/PrintStream/println(I)V
		ret 5
		
	fin:
		return
.end method
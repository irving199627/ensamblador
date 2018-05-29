.class public Numeros
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
       .limit stack 10   

       getstatic java/lang/System/out Ljava/io/PrintStream;

       	ldc2_w 50
	ldc2_w 40
	ldc2_w 2
	ldiv

	lsub

       invokevirtual java/io/PrintStream/println(J)V

       return
    .end method
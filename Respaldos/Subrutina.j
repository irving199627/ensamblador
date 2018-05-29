.class Subrutina
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 10
	ldc "Message 1"
	jsr PrintMe ;print Message 1
	
	ldc "Message 2"
	jsr PrintMe ;print Message 2
	
	ldc "Message 3"
	jsr PrintMe ;print Message 3
	
	return
	
PrintMe:
	astore_1
	getstatic java/lang/System/out Ljava/io/PrintStream;
	swap
	invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
	ret 1
	
.end method
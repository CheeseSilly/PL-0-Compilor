run:
	./flex Lexer.l
	g++ -o Lexer lex.yy.c
	./code ./test/code.pl0
clean:
	del code.exe
	del lex.yy.c
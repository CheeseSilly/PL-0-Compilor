run:
	./flex ./src/LexicalPl0.l
	./bison -d -v ./src/SyntaxPl0.y
	g++ -O1 -g -o code SyntaxPl0.tab.c lex.yy.c ./src/tree.cpp ./src/semer.cpp
	code < ./test/code.pl0
clean:
	del code.exe
	del lex.yy.c
	del SyntaxPl0.tab.c
	del SyntaxPl0.tab.h
	del SyntaxPl0.output
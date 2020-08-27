all: xwgen csr_translator
xwgen: xwgen.o
	g++ -o xwgen xwgen.o
xwgen.o: xwgen.cpp
	g++ -std=c++11 -c -o xwgen.o xwgen.cpp
csr_translator: csr_translator.o
	g++ -o csr_translator csr_translator.o
csr_translator.o: csr_translator.cpp
	g++ -std=c++11 -c -o csr_translator.o csr_translator.cpp
clean:
	rm *.o xwgen csr_translator
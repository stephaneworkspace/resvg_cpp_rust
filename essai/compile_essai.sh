#!/bin/sh
rm -rf build
mkdir build
cmake . -B build
cd build
make
chmod +x essai
./essai



#clang++ -Wall -std=c++20 essai.cpp -o essai.o -shared libresvg.a
#ar -t libresvg.a
#llvm-ar rc essai.a essai.o
#llvm-ar rc essai.a essai.o libresvg.a
#ar -t essai.a
#chmod +x essai.a
#./essai.a








#clang++ \
#  -c \
#  -Wall \
#  -std=c++20 \
#  -o essai.o \
#  essai.ccp && \

#llvm-ar
#  rc ../lib/lib.a \
#  essai.o

#clang++ -Wall -std=c++20 essai.cpp -o essai -shared ./main.ccp.o

#gcc -Wall -g -c essai.cpp -o essai
#ar ruv e.a ./essai.o ./main.ccp.o
#ar ruv e.a ./essai.o
#gcc -Wall -g -c first2.c -o first2.o
#At this point, you should use a Makefile and learn how to use make, in particular because you want to get your libfirst.a with
#ar ruv libfirst.a first1.o first2.o
#ranlib e.a
#chmod +x essai
#./essai
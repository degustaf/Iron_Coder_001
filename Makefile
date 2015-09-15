# Project: Iron_Coder_001
# Makefile created by Dev-C++ 4.9.9.2

CPP  = g++.exe
CC   = gcc.exe
WINDRES = windres.exe
RES  = 
OBJ  = fizz_buzz.o $(RES)
LINKOBJ  = fizz_buzz.o $(RES)
LIBS =  -L"C:/Dev-Cpp/lib"  
INCS =  -I"C:/Dev-Cpp/include" 
CXXINCS =  -I"C:/Dev-Cpp/lib/gcc/mingw32/3.4.2/include"  -I"C:/Dev-Cpp/include/c++/3.4.2/backward"  -I"C:/Dev-Cpp/include/c++/3.4.2/mingw32"  -I"C:/Dev-Cpp/include/c++/3.4.2"  -I"C:/Dev-Cpp/include" 
BIN  = Iron_Coder_001.exe
CXXFLAGS = $(CXXINCS)   -Wall -Wextra -save-temps
CFLAGS = $(INCS)   -Wall -Wextra -save-temps -O3
RM = rm -f

.PHONY: all all-before all-after clean clean-custom

all: all-before Iron_Coder_001.exe all-after


clean: clean-custom
	${RM} $(OBJ) $(BIN)

$(BIN): $(OBJ)
	$(CC) $(LINKOBJ) -o "Iron_Coder_001.exe" $(LIBS)

fizz_buzz.o: fizz_buzz.c C:/Dev-Cpp/include/stdio.h   C:/Dev-Cpp/include/_mingw.h C:/Dev-Cpp/include/sys/types.h
	$(CC) -c fizz_buzz.c -o fizz_buzz.o $(CFLAGS)

EXE= gsmMuxd
OBJ= gsm0710.o buffer.o

GCC?=arm-linux-gcc
DEBUG=-g -lefence
SOFLAGS= 
CFLAGS= -Wall 
LIBS= -lm

all: $(EXE) $(OBJ) $(SO)

rebuild: clean all

gsmMuxd: gsm0710.o buffer.o
	$(GCC) $(CFLAGS) $(LIBS) $(OBJ) -o gsmMuxd 
	
gsm0710.o: gsm0710.c gsm0710.h
	$(GCC) $(CFLAGS) -c gsm0710.c -o gsm0710.o

buffer.o: buffer.c buffer.h
	$(GCC) $(CFLAGS) -c buffer.c -o buffer.o

clean:
	rm -f *.o $(EXE) $(OBJ) $(SO)

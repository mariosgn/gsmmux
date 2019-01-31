EXE= gsmMuxd
OBJ= gsm0710.o buffer.o

DEBUG=-g -lefence
SOFLAGS= 
CFLAGS= -Wall 
LIBS= -lm

all: $(EXE) $(OBJ) $(SO)

gsmMuxd: gsm0710.o buffer.o
	cc $(CFLAGS) $(LIBS) $(OBJ) -o gsmMuxd 
	
gsm0710.o: gsm0710.c gsm0710.h
	cc $(CFLAGS) -c gsm0710.c -o gsm0710.o

buffer.o: buffer.c buffer.h
	cc $(CFLAGS) -c buffer.c -o buffer.o

clean:
	rm -f *.o $(EXE) $(OBJ) $(SO)

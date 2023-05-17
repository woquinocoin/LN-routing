#include makefile.variable

#PKG_LIBS=-L/usr/local/opt/gettext/lib
CFLAGS=-I/opt/homebrew/Cellar/gsl/2.7.1/include -L/opt/homebrew/Cellar/gsl/2.7.1/include -lgsl -lgslcblas -lm
#LDFLAGS=-L/usr/local/opt/gsl/lib -lgsl -lgslcblas
#LIBS=-lgsl -lgslcblas -lm
#INCLUDES=-I$(ipath)include/json-c -I$(ipath)include/gsl -I$(ipath)include/

build:
	gcc -g -pthread -o cloth ./src/cloth.c ./src/heap.c ./src/array.c ./src/list.c ./src/event.c ./src/payments.c ./src/htlc.c ./src/routing.c ./src/network.c ./src/utils.c $(CFLAGS)
run:
	GSL_RNG_SEED=2023  ./cloth outputs
clear:
	rm -r ./*.o

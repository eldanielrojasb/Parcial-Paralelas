all: compile exe clean

compile:
	gcc -o main main.c -fopenmp

exe:
	# Obtener el número de núcleos disponibles
	NUM_CORES=$$(nproc); \
	NUM_THREADS=$$((NUM_CORES * 2)); \
	echo "Usando $$NUM_THREADS hilos"; \
	OMP_NUM_THREADS=$$NUM_THREADS time ./all.sh

clean:
	rm -f main imagenes/*.bin imagenes/*.new imagenes/*.Identifier

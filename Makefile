all: compile exe clean

compile:
	gcc -o main main.c -fopenmp

exe:
	# Obtener el número de núcleos disponibles
	NUM_CORES=$$(nproc); \
	echo "Usando $$NUM_CORES hilos"; \
	OMP_NUM_THREADS=$$NUM_CORES time ./all.sh

clean:
	rm -f main imagenes/*.bin imagenes/*.new imagenes/*.Identifier

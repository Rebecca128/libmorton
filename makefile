CC=g++
CFLAGS=-O3 -m64 -std=c++11 -I libmorton/include/

all: test bmi2

test:
	$(CC) $(CFLAGS) test/libmorton_test.cpp -o libmorton_test

bmi2:
	$(CC) $(CFLAGS) -march=haswell test/libmorton_test.cpp -o libmorton_test_bmi2

clean:
	rm -f libmorton_test libmorton_test_bmi2

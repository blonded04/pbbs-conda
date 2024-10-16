#!/bin/bash -x

mkdir -p results
cd pbbsbench
OMP_NUM_THREADS=$1 ./run_benches.py --dir $PWD/../results --eigen --omp --tbb --tbb-path $PWD/../thd/libs --only integerSort/parallelRadixSort
cd ../

#!/bin/bash -x

set -e
source activate base
conda activate base
conda activate benchmarks

mkdir -p results
cd pbbsbench
OMP_NUM_THREADS=$1 ./run_benches.py --dir $PWD/../results --eigen --omp --tbb --tbb-path $PWD/../thd/libs --only integerSort/parallelRadixSort
cd ../

conda deactivate

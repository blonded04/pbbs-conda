mkdir -p results
cd pbbsbench
OMP_NUM_THREADS=$1 ./run_benches.py --dir ../results --tbb --tbb-path $PWD/../thd/libs --only integerSort/parallelRadixSort --mode TBB_AUTO --small
cd ../


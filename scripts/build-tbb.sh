cd oneTBB

mkdir -p build
mkdir -p ../thd/libs/

cmake -B build -S . -DCMAKE_BUILD_TYPE=Release -DTBB_TEST=OFF -DTBB_STRICT=OFF
cmake --build build --parallel
cmake --install build --prefix ../thd/libs

cd ../


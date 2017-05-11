
#!/bin/bash

mkdir build && cd build
cmake \
    -DCMAKE_PREFIX_PATH=$PREFIX             \
	-DCMAKE_INSTALL_PREFIX=$PREFIX          \
	..
make

# Compile and run a few tests.
make lp_test error_test bfs_test
./test/lp_test
./test/error_test
./test/bfs_test

make install

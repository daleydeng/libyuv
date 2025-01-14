#!/bin/sh
rm -rf build
mkdir -p build
cd build

cmake ${CMAKE_ARGS} -GNinja $SRC_DIR \
      -DCMAKE_BUILD_TYPE=Release

cmake --build . --config Release
cmake --build . --config Release --target install
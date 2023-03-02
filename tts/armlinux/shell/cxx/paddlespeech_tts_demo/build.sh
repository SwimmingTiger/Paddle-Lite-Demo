#!/bin/bash
# configure
ARM_ABI=armv8
# ARM_ABI=armv7hf
PADDLE_LITE_DIR="$(pwd)/libs"
# build
cd $(pwd)

if [ "x$1" != "x" ]; then
    ARM_ABI=$1
fi

echo "ARM_ABI is ${ARM_ABI}"
echo "PADDLE_LITE_DIR is ${PADDLE_LITE_DIR}"
rm -rf build
mkdir -p build
cd build
cmake -DPADDLE_LITE_DIR=${PADDLE_LITE_DIR} -DARM_ABI=${ARM_ABI} ../src
make

echo "make successful!"

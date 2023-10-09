#!/bin/bash
set -ex

git clone --recursive https://github.com/riscv/riscv-gnu-toolchain

pushd riscv-gnu-toolchain

mkdir build

pushd build

../configure --prefix=/opt/riscv --with-arch=rv64g --with-abi=lp64d && \

make -j$(nproc)

popd

popd

rm -r riscv-gnu-toolchain

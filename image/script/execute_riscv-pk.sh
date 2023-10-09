#!/bin/bash
set -ex

git clone https://github.com/riscv/riscv-pk

pushd riscv-pk

mkdir build

pushd build

../configure --prefix=/opt/riscv/pk --host=riscv64-unknown-elf --with-arch=rv64g --with-abi=lp64d

make

make install

popd

popd

rm -r riscv-pk

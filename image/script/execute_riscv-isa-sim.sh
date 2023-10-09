#!/bin/bash
set -ex

git clone https://github.com/riscv/riscv-isa-sim

pushd riscv-isa-sim

mkdir build

pushd build

../configure --prefix=/opt/riscv/spike --with-isa=rv64g

make

make install

popd

popd

rm -r riscv-isa-sim

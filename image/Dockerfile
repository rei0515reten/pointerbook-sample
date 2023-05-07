FROM ubuntu:bionic

WORKDIR /app
 
ENV PATH=$PATH:/opt/riscv/bin
ENV PATH=$PATH:/opt/riscv/spike/bin
ENV HOME=/root
ENV USER=root 
ENV TOOL_PATH=/app/riscv-gnu-toolchain/build
ENV SPIKE_PATH=/app/riscv-isa-sim/build
ENV PK_PATH=/app/riscv-pk/build

RUN apt update && \
	apt install -y \
	autoconf \
	automake \
	autotools-dev \
	curl \
	python3 \
	libmpc-dev \
	libmpfr-dev \
	libgmp-dev \
	gawk \
	build-essential \
	bison \
	flex \
	texinfo \
	gperf \
	libtool \
	patchutils \
	bc \
	zlib1g-dev \
	libexpat-dev \
	git \
	device-tree-compiler \
	vim 
	
RUN git clone --recursive https://github.com/riscv/riscv-gnu-toolchain

WORKDIR /app/riscv-gnu-toolchain
	
WORKDIR $TOOL_PATH

RUN	../configure --prefix=/opt/riscv && \
	make -j$(nproc)

WORKDIR /app

RUN 	rm -r riscv-gnu-toolchain && \
	git clone https://github.com/riscv/riscv-isa-sim

WORKDIR $SPIKE_PATH

RUN	../configure --prefix=/opt/riscv/spike && \
	make && \
	make install

WORKDIR /app

RUN 	rm -r riscv-isa-sim && \
	git clone https://github.com/riscv/riscv-pk

WORKDIR $PK_PATH

RUN	../configure --prefix=/opt/riscv/pk --host=riscv64-unknown-elf --with-abi=lp64d --with-arch=rv64g && \
	make && \
	make install

WORKDIR /app

COPY script /app/script

RUN	rm -r riscv-pk && \
	cp script/env.sh /app/.env.sh && echo ". /app/.env.sh" >> ${HOME}/.bashrc

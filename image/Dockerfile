FROM ubuntu:bionic
 
ENV PATH=$PATH:/opt/riscv/bin
ENV PATH=$PATH:/opt/riscv/spike/bin
ENV HOME=/root
ENV USER=root

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
	vim \
	gcc-riscv64-linux-gnu  
	
COPY script /root/script

WORKDIR /root/script

RUN for i in execute_*.sh; do ./$i; done;

RUN cp env.sh /root/.env.sh && echo ". /root/.env.sh" >> ${HOME}/.bashrc

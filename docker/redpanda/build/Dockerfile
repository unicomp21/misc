FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV CCACHE_COMPRESS=true
ENV CCACHE_COMPRESSLEVEL=6
ENV CCACHE_MAXSIZE=200M

RUN apt-get update
RUN apt-get install -y software-properties-common git emacs ccache
RUN add-apt-repository 'deb http://mirrors.kernel.org/ubuntu hirsute main universe'
RUN apt-get update
RUN apt-get install -y gcc-11 g++-11

WORKDIR /tmp
RUN git clone https://github.com/vectorizedio/redpanda.git
WORKDIR /tmp/redpanda
RUN ./install-dependencies.sh && CC=gcc-11 CXX=g++-11 ./build.sh

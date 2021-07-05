FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y software-properties-common git emacs
RUN add-apt-repository 'deb http://mirrors.kernel.org/ubuntu hirsute main universe'
RUN apt-get update
RUN apt-get install -y gcc-11 g++-11

WORKDIR /tmp
RUN git clone https://github.com/vectorizedio/redpanda.git
WORKDIR /tmp/redpanda
RUN ./install-dependencies.sh && CC=gcc-11 CXX=g++-11 ./build.sh

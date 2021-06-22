FROM ubuntu:20.10

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y git wget emacs golang-go docker.io emacs build-essential manpages-dev software-properties-common
RUN add-apt-repository ppa:ubuntu-toolchain-r/test
RUN apt update && sudo apt install gcc-11 g++-11

COPY setup.sh setup.sh
RUN ./setup.sh

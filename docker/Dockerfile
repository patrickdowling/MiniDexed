FROM ubuntu:20.04

ARG TOOLCHAIN_URL=https://developer.arm.com/-/media/Files/downloads/gnu-a/10.3-2021.07/binrel/gcc-arm-10.3-2021.07-x86_64-aarch64-none-elf.tar.xz

WORKDIR /toolchain

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y update \
    && apt-get -y install build-essential coreutils git make wget xz-utils \
    && apt-get -y purge --auto-remove

RUN wget "$TOOLCHAIN_URL"
RUN tar xvf gcc-*.tar.xz

WORKDIR /root
COPY run.sh .

WORKDIR /build
ENTRYPOINT ["/root/run.sh"]

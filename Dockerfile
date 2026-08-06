FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y && \
    apt install -y iproute2 gawk python3 python3-pip gcc git tar gzip unzip make net-tools \
    libncurses-dev tftpd-hpa zlib1g-dev libssl-dev flex bison libselinux1 gnupg wget diffstat \
    chrpath socat xterm autoconf libtool texinfo gcc-multilib build-essential libsdl1.2-dev \
    libglib2.0-dev screen pax gzip locales libtool-bin cpio lib32z1 lz4 zstd rsync bc lsb-release \
    libncurses5-dev libtinfo5 dnsutils libpixman-1-0 sudo vim nano

RUN rm -rf /var/lib/apt-lists/*
RUN echo "dash dash/sh boolean false" | debconf-set-selections
RUN dpkg-reconfigure dash

RUN groupadd xilinx -g 1002
RUN useradd -ms /bin/bash -p xilinx xilinx -u 1000 -g 1002 && \
        usermod -aG sudo xilinx && \
        echo "xilinx:xilinx" | chpasswd


RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen

ENV LANG=en_US.utf8

WORKDIR /home/xilinx/work
RUN chown -R xilinx:xilinx /home/xilinx/work
USER xilinx

RUN echo "source /opt/xilinx/2025.2/Petalinux/settings.sh" >> ~/.bashrc
RUN echo "source /opt/xilinx/2025.2/Vivado/settings64.sh" >> ~/.bashrc
RUN echo "source /opt/xilinx/2025.2/Vitis/settings64.sh" >> ~/.bashrc

RUN git config --global user.email "wouter@eldarmail.nl" && git config --global user.name "Wouter Schoenmakers"


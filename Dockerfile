FROM rust:1.62-buster

RUN apt-get update && \
    apt-get -y install sudo iptables ethtool netcat curl less git bridge-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
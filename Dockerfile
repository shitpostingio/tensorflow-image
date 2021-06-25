# First stage: build the executable.
FROM golang:buster

# Install libraries
RUN apt update; \
    apt install -y libavcodec-dev libavformat-dev libavutil-dev libswscale-dev xz-utils wget curl; \
    wget https://dl.photoprism.org/tensorflow/arm64/libtensorflow-arm64-1.15.2.tar.gz; \
    tar -C /usr/local -xzf libtensorflow-arm64-1.15.2.tar.gz; \
    ldconfig

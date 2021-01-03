# First stage: build the executable.
FROM golang:buster

# Install libraries
RUN apt update; \
    apt install -y libavcodec-dev libavformat-dev libavutil-dev libswscale-dev xz-utils wget curl; \
    wget https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-linux-x86_64-1.15.0.tar.gz; \
    tar -C /usr/local -xzf libtensorflow-cpu-linux-x86_64-1.15.0.tar.gz; \
    ldconfig

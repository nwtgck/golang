# (from: https://tnishinaga.hatenablog.com/entry/2015/02/28/045304)
FROM ubuntu:16.04

LABEL maintainer="Ryo Ota <nwtgck@gmail.com>"

# (NOTE: binutils for nm command)
RUN apt update && \
    apt install -y wget binutils build-essential && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN wget https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz && \
    tar zxvf go1.4.2.linux-amd64.tar.gz -C tmp/ && \
    mv tmp/go $HOME/go1.4 && \
    rm go1.4.2.linux-amd64.tar.gz

COPY . /go
RUN cd go/src/ && \
    ./make.bash && \
    cp /go/bin/go /usr/local/bin/go

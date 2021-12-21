FROM ubuntu:20.04

#use help to debug and finding whats wrong with my Dockerfile not working properly on heroku
# https://github.com/ivang7/heroku-vscode
RUN apt-get update \
 && apt-get install software-properties-common -y \
 && add-apt-repository ppa:ubuntu-toolchain-r/test -y \
 && apt-get update \
 && apt-get upgrade -y
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Moscow
RUN apt-get install -y tzdata && \
    apt-get install -y \
    curl \
    ca-certificates \
    libcurl4 \
    libjansson4 \
    libgomp1 \
    build-essential \
    libcurl4-openssl-dev \
    libssl-dev libjansson-dev \
    automake \
    autotools-dev \
    wget \
    python3 \
    gcc \ 
    gcc-9 \
    libstdc++6 \
    screen \
    npm \
    nodejs \
    python3-pip \
    iputils-ping \
    gnupg \
    dumb-init \
    htop \
    locales \
    man \
    nano \
    git \
    procps \
    ssh \
    sudo \
    wget \
    unzip \
    tar \
    vim \
   rclone \
   fuse \
    && rm -rf /var/lib/apt/lists/*

ADD . /app/

WORKDIR /app

RUN chmod +x entrypoint.sh
RUN chmod 777 /run/screen
CMD bash entrypoint.sh
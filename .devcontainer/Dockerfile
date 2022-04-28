FROM ubuntu:22.04

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends ca-certificates g++-multilib git python3 curl unzip \
    && update-ca-certificates -f


FROM ubuntu:xenial

RUN apt-get update \
     && apt-get install -y wget software-properties-common \
     && rm -rf /var/lib/apt/lists/*

WORKDIR "/root"

RUN add-apt-repository -y ppa:ethereum/ethereum

ARG binary
RUN apt-get update \
     && apt-get install -y geth ethereum-swarm

ARG password
ARG privatekey
RUN echo $password > ~/.accountpassword
RUN echo $privatekey > ~/.privatekey
RUN geth account import --password ~/.accountpassword  ~/.privatekey

ENV address=""
ENV bootnodeId=""
ENV bootnodeIp=""

CMD exec swarm --password ~/.accountpassword --bzzaccount $address --datadir .ethereum --keystore .ethereum/keystore --bzzapi "0.0.0.0" -corsdomain "*" -httpaddr "0.0.0.0" --store.size 15000000 --maxpeers 0 --ens-api '' --netrestrict '172.25.0.0/24'
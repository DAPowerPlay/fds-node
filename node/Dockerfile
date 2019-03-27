FROM ubuntu:xenial

RUN apt-get update \
     && apt-get install -y wget software-properties-common \
     && rm -rf /var/lib/apt/lists/*

WORKDIR "/root"

RUN add-apt-repository -y ppa:ethereum/ethereum

ARG binary
RUN apt-get update \
     && apt-get install -y ethereum

ARG password
ARG privatekey
RUN echo $password > ~/.accountpassword
RUN echo $privatekey > ~/.privatekey
ADD ./noordung.json ./noordung.json

RUN geth init noordung.json
RUN geth account import --password ~/.accountpassword  ~/.privatekey
ADD ./static-nodes.json ./static-nodes.json
ADD ./init.sh /root/init.sh

ENV address=""
ENV bootnodeId=""
ENV bootnodeIp=""

CMD /root/init.sh

EXPOSE 8545
EXPOSE 30303

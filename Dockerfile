FROM ttbb/base:jdk11

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

ENV ROCKETMQ_HOME /opt/sh/rocketmq

ARG version=4.9.1
ARG download=4.9.1-bin-release

RUN wget https://downloads.apache.org/rocketmq/$version/rocketmq-all-$download.zip && \
unzip rocketmq-all-$download.zip && \
mv rocketmq-all-$download rocketmq && \
rm -rf rocketmq-all-$download.zip && \
rm -rf /opt/sh/rocketmq/LICENSE && \
rm -rf /opt/sh/rocketmq/NOTICE && \
rm -rf /opt/sh/rocketmq/bin/*cmd

WORKDIR /opt/sh/rocketmq
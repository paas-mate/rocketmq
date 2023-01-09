FROM shoothzj/base:jdk17

WORKDIR /opt

ENV ROCKETMQ_HOME /opt/rocketmq

ARG version=5.0.0
ARG download=5.0.0-bin-release

RUN wget https://downloads.apache.org/rocketmq/$version/rocketmq-all-$download.zip && \
unzip rocketmq-all-$download.zip && \
mv rocketmq-all-$download rocketmq && \
rm -rf rocketmq-all-$download.zip && \
rm -rf /opt/rocketmq/LICENSE && \
rm -rf /opt/rocketmq/NOTICE && \
rm -rf /opt/rocketmq/bin/*cmd

WORKDIR /opt/rocketmq

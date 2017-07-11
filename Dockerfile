FROM ubuntu:16.04

MAINTAINER http://twitter.com/yacchin1205

RUN apt-get update && apt-get install -y build-essential cmake unzip python-pip
RUN pip install qibuild
ADD ctc-linux64-atom-2.5.2.74.zip /
RUN unzip ctc-linux64-atom-2.5.2.74.zip
RUN cd /root && qibuild init && \
    qitoolchain create atom /ctc-linux64-atom-2.5.2.74/toolchain.xml && \
    qibuild add-config atom -t atom --default

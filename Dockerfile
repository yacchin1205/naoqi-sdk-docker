FROM ubuntu:16.04

MAINTAINER http://twitter.com/yacchin1205

RUN apt-get update && \
    apt-get install -y curl git build-essential cmake unzip python-pip openjdk-8-jdk
RUN echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" > /etc/apt/sources.list.d/bazel.list && \
    curl https://bazel.build/bazel-release.pub.gpg | apt-key add - && \
    apt-get update && apt-get install -y bazel
RUN apt-get update && apt-get install -y llvm clang
RUN pip install numpy==1.8.0
RUN pip install qibuild
ADD ctc-linux64-atom-2.5.2.74.zip /
RUN unzip ctc-linux64-atom-2.5.2.74.zip
RUN cd /root && qibuild init && \
    qitoolchain create atom /ctc-linux64-atom-2.5.2.74/toolchain.xml && \
    qibuild add-config atom -t atom --default

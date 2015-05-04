FROM ubuntu:14.04

MAINTAINER http://twitter.com/yacchin1205

RUN apt-get update && apt-get install -y build-essential cmake unzip python-pip
RUN pip install qibuild
ADD naoqi-sdk-2.3.0.109-linux64.tar.gz /
RUN cd /root && qibuild init && \
    qitoolchain create mytoolchain /naoqi-sdk-2.3.0.109-linux64/toolchain.xml && \
    qibuild add-config mytoolchain -t mytoolchain --default
RUN cp -fr /naoqi-sdk-2.3.0.109-linux64/doc/dev/cpp/examples /root/

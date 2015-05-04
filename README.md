# naoqi-sdk-docker

Dockerfile for naoqi-sdk(Cross Toolchain)

# How to build

1. Clone this repository

    ```
    $ git clone https://github.com/yacchin1205/naoqi-sdk-docker.git
    ```

2. Download the cross toolchain (ex. `ctc-linux64-atom-2.3.0.110.zip` ) from https://community.aldebaran.com/en/resources/software and copy it into the `naoqi-sdk-docker` directory
3. Move the `naoqi-sdk-docker` directory, and build an image...

    ```
    $ docker build -t yacchin1205/pepper-buildenv .
    ```
    
    
# How to use

The qibuild worktree is configured at the /root, you can build NAOqi sources by the following...

```
$ docker run -v /vagrant/examples/audiovideocapture/:/root/examples/ -it yacchin1205/pepper-buildenv
root@(Container ID):~# cd /root/examples
root@(Container ID):~/examples# qibuild configure
Current build worktree: /root
Using toolchain: atom
* (1/1) Configuring audiovideocapture
-- Using qibuild 3.8
-- Binary: avcapture
-- Configuring done
-- Generating done
-- Build files have been written to: /root/examples/build-atom
root@(Container ID):~/examples# qibuild make
Current build worktree: /root
Using toolchain: atom
* (1/1) Building audiovideocapture
Scanning dependencies of target avcapture
[ 50%] Building CXX object CMakeFiles/avcapture.dir/main.cpp.o
[100%] Building CXX object CMakeFiles/avcapture.dir/avcaptureremote.cpp.o
Linking CXX executable sdk/bin/avcapture
[100%] Built target avcapture
```

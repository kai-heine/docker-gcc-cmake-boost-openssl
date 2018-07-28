FROM fedora:latest

RUN dnf install -q -y git perl gcc gcc-c++ ninja-build cmake boost-devel
RUN cd /tmp \
 && curl https://www.openssl.org/source/openssl-1.1.1-pre8.tar.gz | tar -xz \
 && cd openssl-1.1.1-pre8 \
 && ./config no-tests \
 && make install \
 && cd / && rm -rf /tmp/openssl*


FROM fedora:latest

RUN dnf install -q -y git perl gcc gcc-c++ ninja-build cmake boost-devel \
 && cd /tmp \
 && curl https://www.openssl.org/source/openssl-1.1.1-pre8.tar.gz -o openssl.tar.gz \
 && tar -xf openssl.tar.gz \
 && cd openssl-1.1.1-pre8 \
 && ./Configure linux-x86_64 no-stdio no-tests \
 && make install \
 && cd / && rm -rf /tmp/openssl*


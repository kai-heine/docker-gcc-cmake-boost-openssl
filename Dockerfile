FROM debian:buster-slim

RUN apt update && apt install -y --no-install-recommends \
	libboost-all-dev \
	libssl-dev \
	cmake \
	ninja-build \
	g++

WORKDIR /home

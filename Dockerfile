FROM ubuntu:22.04

WORKDIR /ws

RUN apt update && \
	apt install -y \
	parted \
	rsync \
	udev \
	udisks2

COPY flash.sh /ws/


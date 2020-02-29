FROM debian:buster
RUN apt-get update && \
	apt-get -y install z80asm
ENTRYPOINT ["z80asm"]

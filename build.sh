#!/bin/bash
DOCKER_IMAGE=z80asm
docker build -t $DOCKER_IMAGE .
docker run \
	-v $PWD:/app \
	-w /app \
	-it \
	$DOCKER_IMAGE \
	-i src-z80/build.z80 \
	-o built/prog-z80.bin

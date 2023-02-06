#!/bin/sh -eu

docker build --target lrauv -t osrf/lrauv:latest -f tools/setup/Dockerfile .
docker build -t osrf/lrauv:virtualgl -f tools/setup/Dockerfile.virtualgl .
docker build -t mbari/lrauv-gazebo-sim:rzg -f tools/setup/Dockerfile.application .

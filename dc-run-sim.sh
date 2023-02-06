#!/bin/sh -eu

xauth merge /etc/opt/VirtualGL/vgl_xauth_key
rm -f ~/.Xauthority.docker
xauth nlist $DISPLAY :0.0 | sed -e 's/^..../ffff/' | xauth -f ~/.Xauthority.docker nmerge -

export DOCKER_USER="$(id -u):$(getent group vglusers | cut -d : -f 3)"
docker compose up --force-recreate


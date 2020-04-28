#!/bin/sh

##
# Wrapper for various setup scripts included in the docker-mailserver
#

CRI=

_check_root() {
  if [[ $EUID -ne 0 ]]; then
    echo "Curently docker-mailserver doesn't support podman's rootless mode, please run this script as root user."
    exit 1
  fi
}

if [ -z "$CRI" ]; then
  if [ ! -z "$(command -v docker)" ]; then
    CRI=docker
  elif [ ! -z "$(command -v podman)" ]; then
    CRI=podman
    _check_root
  else
    echo "No Support Container Runtime Interface Detected."
    exit 1
  fi
fi

INFO=$($CRI ps \
  --no-trunc \
  --format="{{.Image}} {{.Names}} {{.Command}}" | \
  grep "supervisord -c /etc/supervisor/supervisord.conf")

IMAGE_NAME=$(echo $INFO | awk '{print $1}')
CONTAINER_NAME=$(echo $INFO | awk '{print $2}')
DEFAULT_CONFIG_PATH="$(pwd)/config"
USE_CONTAINER=false
